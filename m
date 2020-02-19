Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A358E164EEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2020 20:30:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E3EB620780;
	Wed, 19 Feb 2020 19:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gqPUuIaWgxrf; Wed, 19 Feb 2020 19:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8528520764;
	Wed, 19 Feb 2020 19:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09F7A1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05B05847AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obdMXMP3kDhk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2020 19:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06BB4845CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 19:30:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 11:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="269292928"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 19 Feb 2020 11:30:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 11:30:42 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 11:30:42 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 19 Feb 2020 11:30:42 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net v4] ice: Wait for VF to be reset/ready
 before configuration
Thread-Index: AQHV5rkrchahTmTQw06bviqkxZcVTqgi6JqA
Date: Wed, 19 Feb 2020 19:30:42 +0000
Message-ID: <3515ea1a533f44c99a49ed83d4d230c0@intel.com>
References: <20200219001124.1610130-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200219001124.1610130-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTgzODM2NTMtOWZjNy00ZjU5LTllZGYtY2M2YTBhMDA3ZDhhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSEhKQVVEZVRGSFVrcHlrSDNyamZiRnRpU1J0VXdLWktpRldaQ1liYnhHN0pmT1VWeW9UXC94S1loMDhNczFrZjEifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net v4] ice: Wait for VF to be reset/ready
 before configuration
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Jeff Kirsher
> Sent: Tuesday, February 18, 2020 4:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Creeley, Brett <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [net v4] ice: Wait for VF to be reset/ready before
> configuration
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The configuration/command below is failing when the VF in the xml file is
> already bound to the host iavf driver.
> 
> pci_0000_af_0_0.xml:
> 
> <interface type='hostdev' managed='yes'> <source> <address type='pci'
> domain='0x0000' bus='0xaf' slot='0x0' function='0x0'/> </source> <mac
> address='00:de:ad:00:11:01'/> </interface>
> 
> > virsh attach-device domain_name pci_0000_af_0_0.xml
> error: Failed to attach device from pci_0000_af_0_0.xml
> error: Cannot set interface MAC/vlanid to 00:de:ad:00:11:01/0 for
> 	ifname ens1f1 vf 0: Device or resource busy
> 
> This is failing because the VF has not been completely removed/reset after
> being unbound (via the virsh command above) from the host iavf driver and
> ice_set_vf_mac() checks if the VF is disabled before waiting for the reset to
> finish.
> 
> Fix this by waiting for the VF remove/reset process to happen before
> checking if the VF is disabled. Also, since many functions for VF
> administration on the PF were more or less calling the same 3 functions
> (ice_wait_on_vf_reset(), ice_is_vf_disabled(), and ice_check_vf_init())
> move these into the helper function ice_check_vf_ready_for_cfg(). Then call
> this function in any flow that attempts to configure/query a VF from the PF.
> 
> Lastly, increase the maximum wait time in ice_wait_on_vf_reset() to 800ms,
> and modify/add the #define(s) that determine the wait time.
> This was done for robustness because in rare/stress cases VF removal can
> take a max of ~800ms and previously the wait was a max of ~300ms.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
> v2: Original patch did not apply cleanly to my net-queue tree, so it had
>     to be applied by hand, this version applies cleanly to net-queue
> v3: fixed two return values, which should have returned 0 (Success)
> v4: Brett cleaned up the use of "goto's" and simply returned the current
>     'ret' value
> 
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 134 ++++++++++--------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   3 +-
>  2 files changed, 76 insertions(+), 61 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
