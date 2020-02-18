Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DA016368C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 23:56:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15A4F864FB;
	Tue, 18 Feb 2020 22:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XtOhASBCr5VD; Tue, 18 Feb 2020 22:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F35AB864D4;
	Tue, 18 Feb 2020 22:56:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAFE1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 22:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77A3585B4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 22:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hBzZd_UC-KCz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 22:56:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E146B85A60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 22:56:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; 
 d="asc'?scan'208";a="235690390"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.76])
 by orsmga003.jf.intel.com with ESMTP; 18 Feb 2020 14:56:51 -0800
Message-ID: <c78f27ad9d3eeccdbe85ec5d393fbcc9fac662a5.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Feb 2020 14:56:51 -0800
In-Reply-To: <20200218225059.1294769-1-jeffrey.t.kirsher@intel.com>
References: <20200218225059.1294769-1-jeffrey.t.kirsher@intel.com>
Organization: Intel
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-queue v4] ice: Wait for VF to be
 reset/ready before configuration
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Type: multipart/mixed; boundary="===============0404604459498213792=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0404604459498213792==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-VfXjmVTkF+WMR7hhEjy+"


--=-VfXjmVTkF+WMR7hhEjy+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-18 at 14:50 -0800, Jeff Kirsher wrote:
> From: Brett Creeley <brett.creeley@intel.com>
>=20
> The configuration/command below is failing when the VF in the xml
> file is already bound to the host iavf driver.
>=20
> pci_0000_af_0_0.xml:
>=20
> <interface type=3D'hostdev' managed=3D'yes'>
> <source>
> <address type=3D'pci' domain=3D'0x0000' bus=3D'0xaf' slot=3D'0x0'
> function=3D'0x0'/>
> </source>
> <mac address=3D'00:de:ad:00:11:01'/>
> </interface>
>=20
> > virsh attach-device domain_name pci_0000_af_0_0.xml
> error: Failed to attach device from pci_0000_af_0_0.xml
> error: Cannot set interface MAC/vlanid to 00:de:ad:00:11:01/0 for
>         ifname ens1f1 vf 0: Device or resource busy
>=20
> This is failing because the VF has not been completely removed/reset
> after being unbound (via the virsh command above) from the host iavf
> driver and ice_set_vf_mac() checks if the VF is disabled before
> waiting
> for the reset to finish.
>=20
> Fix this by waiting for the VF remove/reset process to happen before
> checking if the VF is disabled. Also, since many functions for VF
> administration on the PF were more or less calling the same 3
> functions
> (ice_wait_on_vf_reset(), ice_is_vf_disabled(), and
> ice_check_vf_init())
> move these into the helper function ice_check_vf_ready_for_cfg().
> Then
> call this function in any flow that attempts to configure/query a VF
> from the PF.
>=20
> Lastly, increase the maximum wait time in ice_wait_on_vf_reset() to
> 800ms, and modify/add the #define(s) that determine the wait time.
> This was done for robustness because in rare/stress cases VF removal
> can
> take a max of ~800ms and previously the wait was a max of ~300ms.
>=20
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>

Disregard this submission, I put the wrong change log below on this
patch and this was supposed to be v3, not v4.  I have already submitted
the correct version, with the correct change log.

> ---
> v2: add SKB_GSO_UDP_L4 to features check and probe
> v3: patch did not apply cleanly to next-queue tree, due to other igc
>     patches that had been applied, so fixed up the patch to apply
> cleanly
> v4: fixed two return values, which should have returned 0 (Success)
>=20
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 127 ++++++++++----
> ----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   3 +-
>  2 files changed, 73 insertions(+), 57 deletions(-)


--=-VfXjmVTkF+WMR7hhEjy+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl5Ma7MACgkQ5W/vlVpL
7c5g+w//VslQbBYCDlosniWzg90qRYOvfjFA+e0jcIjpy0aYCZE8GwZObBlXrqeU
DEgWFk1Gc6cfyfn7ZOwA6LSIehkoC6V79jeq80RfviX/tA2mnvEJRZqthJcXg9+S
kLoIGjGCB01p6H4LutoOD0iqAEwxyz0R7I7YkbekWxqmtPc8Bs+i+jTmNTn36olK
ybk2AyTg/sYtADHzS5ICgBnYOxb36caolACfXxDdWYHa9q5Hmt+E4j7/jVZddCJu
dYQ6pP1lQGg7XXD7eC/kFLB4WIYEEKXVDfyarhM9HQeqqv3pA5JRDWk5hMeKkz9+
XZem+cv23+YUMJ3odJ3/jPcDMjuMUIF0sl4wpSrLJlokoHJJ0oo350pcb20BoT6G
ctfwnVR2iPBdEUrzTtMe60C3Ig6DlEJ8iNgmedssB26XyOJOq0dACNbCAR6VImu1
8Qs9AfmYvXfFUVwY54f83KhSuW+VAXQunQfyn/G/JnxoIJn7YuSnPiuztlP089As
OUJ4QCjD0olL9UfjGkz/pLnez7rmKznnQcTKQbE/Fktt0tRhIx0TlT1w9KUVFtj+
Z6OuaG/QuPz+796XG/m+TRRpGzRZqiItFblOvwRAxoCIztRU34QfibiscRnmD6j6
VNC84uw/JkJmfGEgfuU6GozRnOA9sYcsaSuZJOOK5/CYG3PZB6Q=
=DCnx
-----END PGP SIGNATURE-----

--=-VfXjmVTkF+WMR7hhEjy+--


--===============0404604459498213792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0404604459498213792==--

