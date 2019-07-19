Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1276EB8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 22:26:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9783D86BA7;
	Fri, 19 Jul 2019 20:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNREjYbmzQ1F; Fri, 19 Jul 2019 20:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D26AA86C2C;
	Fri, 19 Jul 2019 20:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABE811BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 20:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5C6A2052B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 20:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KtsxP6kN3OC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2019 20:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 7AE3B20018
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 20:26:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 13:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; 
 d="asc'?scan'208";a="170239785"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jul 2019 13:26:54 -0700
Message-ID: <a805afc41bb56d2e041946886d9aaae8ca0f5188.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Jul 2019 13:26:50 -0700
In-Reply-To: <bc092433-86ee-cf10-9a1a-63fe5ff7bb4c@intel.com>
References: <20190719200723.27851-1-jeffrey.t.kirsher@intel.com>
 <bc092433-86ee-cf10-9a1a-63fe5ff7bb4c@intel.com>
Organization: Intel
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] Documentation: iavf: Update the
 Intel LAN driver doc for iavf
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Reply-To: jeffrey.t.kirsher@intel.com
Content-Type: multipart/mixed; boundary="===============7558961234220742434=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============7558961234220742434==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pP4/kqMLyOYUVq/DKt7f"


--=-pP4/kqMLyOYUVq/DKt7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-07-19 at 13:18 -0700, Samudrala, Sridhar wrote:
>=20
> On 7/19/2019 1:07 PM, Jeff Kirsher wrote:
> > Update the LAN driver documentation to include the latest feature
> > implementation and driver capabilities.
> >=20
> > Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> > ---
> > v2: fixed SOB and cleaned up the trailing whitespace
> >=20
> >   .../networking/device_drivers/intel/iavf.rst  | 331
> > ++++++++++++++++--
> >   1 file changed, 298 insertions(+), 33 deletions(-)
> >=20
> > diff --git a/Documentation/networking/device_drivers/intel/iavf.rst
> > b/Documentation/networking/device_drivers/intel/iavf.rst
> > index 2d0c3baa1752..fd3d045ca6d1 100644
> > --- a/Documentation/networking/device_drivers/intel/iavf.rst
> > +++ b/Documentation/networking/device_drivers/intel/iavf.rst
> > @@ -10,11 +10,15 @@ Copyright(c) 2013-2018 Intel Corporation.
> >   Contents
> >   =3D=3D=3D=3D=3D=3D=3D=3D
> >  =20
> > +- Overview
> >   - Identifying Your Adapter
> >   - Additional Configurations
> >   - Known Issues/Troubleshooting
> >   - Support
> >  =20
> > +Overview
> > +=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> >   This file describes the iavf Linux* Base Driver. This driver was
> > formerly
> >   called i40evf.
> >  =20
> > @@ -27,6 +31,7 @@ The guest OS loading the iavf driver must support
> > MSI-X interrupts.
> >  =20
> >   Identifying Your Adapter
> >   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> > +
> >   The driver in this kernel is compatible with devices based on the
> > following:
> >    * Intel(R) XL710 X710 Virtual Function
> >    * Intel(R) X722 Virtual Function
> > @@ -50,9 +55,10 @@ Link messages will not be displayed to the
> > console if the distribution is
> >   restricting system messages. In order to see network driver link
> > messages on
> >   your console, set dmesg to eight by entering the following::
> >  =20
> > -  dmesg -n 8
> > +    # dmesg -n 8
> >  =20
> > -NOTE: This setting is not saved across reboots.
> > +NOTE:
> > +  This setting is not saved across reboots.
> >  =20
> >   ethtool
> >   -------
> > @@ -72,11 +78,11 @@ then requests from that VF to set VLAN tag
> > stripping will be ignored.
> >   To enable/disable VLAN tag stripping for a VF, issue the
> > following command
> >   from inside the VM in which you are running the VF::
> >  =20
> > -  ethtool -K <if_name> rxvlan on/off
> > +    # ethtool -K <if_name> rxvlan on/off
> >  =20
> >   or alternatively::
> >  =20
> > -  ethtool --offload <if_name> rxvlan on/off
> > +    # ethtool --offload <if_name> rxvlan on/off
> >  =20
> >   Adaptive Virtual Function
> >   -------------------------
> > @@ -91,21 +97,21 @@ additional features depending on what features
> > are available in the PF with
> >   which the AVF is associated. The following are base mode
> > features:
> >  =20
> >   - 4 Queue Pairs (QP) and associated Configuration Status
> > Registers (CSRs)
> > -  for Tx/Rx.
> > -- i40e descriptors and ring format.
> > -- Descriptor write-back completion.
> > -- 1 control queue, with i40e descriptors, CSRs and ring format.
> > -- 5 MSI-X interrupt vectors and corresponding i40e CSRs.
> > -- 1 Interrupt Throttle Rate (ITR) index.
> > -- 1 Virtual Station Interface (VSI) per VF.
> > +  for Tx/Rx
> > +- i40e descriptors and ring format
> > +- Descriptor write-back completion
> > +- 1 control queue, with i40e descriptors, CSRs and ring format
> > +- 5 MSI-X interrupt vectors and corresponding i40e CSRs
> > +- 1 Interrupt Throttle Rate (ITR) index
> > +- 1 Virtual Station Interface (VSI) per VF
> >   - 1 Traffic Class (TC), TC0
> >   - Receive Side Scaling (RSS) with 64 entry indirection table and
> > key,
> > -  configured through the PF.
> > -- 1 unicast MAC address reserved per VF.
> > -- 16 MAC address filters for each VF.
> > -- Stateless offloads - non-tunneled checksums.
> > -- AVF device ID.
> > -- HW mailbox is used for VF to PF communications (including on
> > Windows).
> > +  configured through the PF
> > +- 1 unicast MAC address reserved per VF
> > +- 16 MAC address filters for each VF
> > +- Stateless offloads - non-tunneled checksums
> > +- AVF device ID
> > +- HW mailbox is used for VF to PF communications (including on
> > Windows)
> >  =20
> >   IEEE 802.1ad (QinQ) Support
> >   ---------------------------
> > @@ -117,8 +123,8 @@ VLAN ID, among other uses.
> >  =20
> >   The following are examples of how to configure 802.1ad (QinQ)::
> >  =20
> > -  ip link add link eth0 eth0.24 type vlan proto 802.1ad id 24
> > -  ip link add link eth0.24 eth0.24.371 type vlan proto 802.1Q id
> > 371
> > +    # ip link add link eth0 eth0.24 type vlan proto 802.1ad id 24
> > +    # ip link add link eth0.24 eth0.24.371 type vlan proto 802.1Q
> > id 371
> >  =20
> >   Where "24" and "371" are example VLAN IDs.
> >  =20
> > @@ -133,6 +139,19 @@ specific application. This can reduce latency
> > for the specified application,
> >   and allow Tx traffic to be rate limited per application. Follow
> > the steps below
> >   to set ADq.
> >  =20
> > +Requirements:
> > +
> > +- The sch_mqprio, act_mirred and cls_flower modules must be loaded
> > +- The latest version of iproute2
> > +- If another driver (for example, DPDK) has set cloud filters, you
> > cannot
> > +  enable ADQ
> > +- Depending on the underlying PF device, ADQ cannot be enabled
> > when the
> > +  following features are enabled:
> > +
> > +  + Data Center Bridging (DCB)
> > +  + Multiple Functions per Port (MFP)
> > +  + Sideband Filters
> > +
> >   1. Create traffic classes (TCs). Maximum of 8 TCs can be created
> > per interface.
> >   The shaper bw_rlimit parameter is optional.
> >  =20
> > @@ -141,9 +160,9 @@ to 1Gbit for tc0 and 3Gbit for tc1.
> >  =20
> >   ::
> >  =20
> > -  # tc qdisc add dev <interface> root mqprio num_tc 2 map 0 0 0 0
> > 1 1 1 1
> > -  queues 16@0 16@16 hw 1 mode channel shaper bw_rlimit min_rate
> > 1Gbit 2Gbit
> > -  max_rate 1Gbit 3Gbit
> > +    tc qdisc add dev <interface> root mqprio num_tc 2 map 0 0 0 0
> > 1 1 1 1
> > +    queues 16@0 16@16 hw 1 mode channel shaper bw_rlimit min_rate
> > 1Gbit 2Gbit
> > +    max_rate 1Gbit 3Gbit
> >  =20
> >   map: priority mapping for up to 16 priorities to tcs (e.g. map 0
> > 0 0 0 1 1 1 1
> >   sets priorities 0-3 to use tc0 and 4-7 to use tc1)
> > @@ -162,6 +181,10 @@ Totals must be equal or less than port speed.
> >   For example: min_rate 1Gbit 3Gbit: Verify bandwidth limit using
> > network
> >   monitoring tools such as ifstat or sar =E2=80=93n DEV [interval] [num=
ber
> > of samples]
> >  =20
> > +NOTE:
> > +  Setting up channels via ethtool (ethtool -L) is not supported
> > when the
> > +  TCs are configured using mqprio.
> > +
> >   2. Enable HW TC offload on interface::
> >  =20
> >       # ethtool -K <interface> hw-tc-offload on
> > @@ -171,16 +194,16 @@ monitoring tools such as ifstat or sar =E2=80=93n=
 DEV
> > [interval] [number of samples]
> >       # tc qdisc add dev <interface> ingress
> >  =20
> >   NOTES:
> > - - Run all tc commands from the iproute2 <pathtoiproute2>/tc/
> > directory.
> > - - ADq is not compatible with cloud filters.
> > + - Run all tc commands from the iproute2 <pathtoiproute2>/tc/
> > directory
> > + - ADq is not compatible with cloud filters
> >    - Setting up channels via ethtool (ethtool -L) is not supported
> > when the TCs
> > -   are configured using mqprio.
> > +   are configured using mqprio
> >    - You must have iproute2 latest version
> > - - NVM version 6.01 or later is required.
> > + - NVM version 6.01 or later is required
> >    - ADq cannot be enabled when any the following features are
> > enabled: Data
> > -   Center Bridging (DCB), Multiple Functions per Port (MFP), or
> > Sideband Filters.
> > +   Center Bridging (DCB), Multiple Functions per Port (MFP), or
> > Sideband Filters
> >    - If another driver (for example, DPDK) has set cloud filters,
> > you cannot
> > -   enable ADq.
> > +   enable ADq
> >    - Tunnel filters are not supported in ADq. If encapsulated
> > packets do arrive
> >      in non-tunnel mode, filtering will be done on the inner
> > headers.  For example,
> >      for VXLAN traffic in non-tunnel mode, PCTYPE is identified as
> > a VXLAN
> > @@ -194,10 +217,236 @@ NOTES:
> >      traffic will be duplicated and sent to all matching TC
> > queues.  The hardware
> >      switch mirrors the packet to a VSI list when multiple filters
> > are matched.
> >  =20
> > +SR-IOV Hypervisor Management Interface
> > +--------------------------------------
> > +The sysfs file structure below supports the SR-IOV hypervisor
> > management
> > +interface.
> > +
> > +| /sys/class/net/<interface-name>/device/sriov (see [1]_)
> > +| +-- [VF-id, 0 .. 127] (see [2]_)
> > +| | +-- trunk
> > +| | +-- vlan_mirror
> > +| | +-- engress_mirror
> > +| | +-- ingress_mirror
> > +| | +-- mac_anti_spoof
> > +| | +-- vlan_anti_spoof
> > +| | +-- loopback
> > +| | +-- mac
> > +| | +-- mac_list
> > +| | +-- promisc
> > +| | +-- vlan_strip
> > +| | +-- stats
> > +| | +-- link_state
> > +| | +-- max_tx_rate
> > +| | +-- min_tx_rate
> > +| | +-- spoofcheck
> > +| | +-- trust
> > +| | +-- vlan
> > +
> > +.. [1] kobject started from =E2=80=9Csriov=E2=80=9D is not available f=
rom existing
> > kernel
> > +   sysfs, and it requires device driver to implement this
> > interface.
> > +.. [2] assume maximum # of VF supported by a PF is 128. To support
> > a device
> > +   that supports more than 128 SR-IOV instances, a =E2=80=9Cvfx=E2=80=
=9D is added
> > to 0..127.
> > +   With =E2=80=9Cvfx=E2=80=9D kboject, users need to add vf index as t=
he first
> > parameter and
> > +   followed by =E2=80=9C:=E2=80=9D.
>=20
> Is this sysfs mgmt interface and patch targeted for upstream iavf?

I confirmed with validation that the sysfs mgmt interface was already
upstream in the kernel before adding the existing documentation.

--=-pP4/kqMLyOYUVq/DKt7f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl0yJ4oACgkQ5W/vlVpL
7c4TrA/+LqDYDswdy/o2Ps2p6O7a5gYgEUdtMNA9kBkGmysxfVjQSueaHIQlCcd1
kk8clDKBkQRTKbuapw3KDj4LOAkE5VzpQL2yrkMvE2WVSJo7d6qsuHFYWlc1EV+W
oGsKs6ypuAxLljAuxq+nzwplbH4+yydqniMWm8L5wX2LMHnxdNPHOFjueFUWsknL
MoK2bySPIQWgak8fszLOBEYoAQrvHf0DfyR/vEvia2d9LGekPhy64+9D+yRT+nmo
sN7gkcO9hWnzkZLreCyRkY8Ehppd9SYLKbOcH1kEe+x4+k8LWm2DCjy0mLhfRekD
RZ6dJHg60gZAPLbqfACMlreNxHiPk4NWOU4QojNh8vIXnG6z22YFB0vTMs7BeGxf
1PBlHh4R8P52d/JHucxY0UzRp+quyd4S1C19BAKdoUnFNMnU3cuBkmCyUVOAJbsu
xg+SLajuaX2UAZnwA6mrDY+3EH4H0SCnju+CKKsE92Cz1CVRbL1/ig85hDGwN1Hw
ZxNGvotNMOObkyh7bnm0QSuQ7Tw1l+IEsXJ5cf66BniOGNCBbRQX52pWqshNNlFI
eJFUIUtCwNJyLiVCCodWFfOYWXYL4+AkinzXnOxMZees6FWRjMyr1UggfmMqpmAI
zjCcbgr6iTZ6I6K9onQtpXrDn4bAZj97CzCAPND7NHcW4Lnkuxo=
=jTRA
-----END PGP SIGNATURE-----

--=-pP4/kqMLyOYUVq/DKt7f--


--===============7558961234220742434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7558961234220742434==--

