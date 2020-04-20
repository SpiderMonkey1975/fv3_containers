      PROGRAM hello_world_mpi
      include 'mpif.h'

      integer myID, num_mpi_tasks, ierr

      call MPI_INIT(ierr)
      call MPI_COMM_SIZE(MPI_COMM_WORLD, num_mpi_tasks, ierr)
      call MPI_COMM_RANK(MPI_COMM_WORLD, myID, ierr)

      if (myID == 0) then
         write(*,*) "There are ", num_mpi_tasks, " waiting to say Hello"
      endif
      call MPI_Barrier( MPI_COMM_WORLD, ierr )
      write(*,*) "HELLO from MPI Task ", myID

      call MPI_FINALIZE(ierr)
      END PROGRAM
