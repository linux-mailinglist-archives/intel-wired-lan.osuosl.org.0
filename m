Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CE0D9862
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2019 19:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CC4788393;
	Wed, 16 Oct 2019 17:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eXKTuWdtB5uG; Wed, 16 Oct 2019 17:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 848CC8788E;
	Wed, 16 Oct 2019 17:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FC621BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 17:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B231878B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 17:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GhQ4iMfAUDxg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2019 17:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F67E878B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 17:22:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 10:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="202132234"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Oct 2019 10:22:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 10:22:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Oct 2019 10:22:37 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 16 Oct 2019 10:22:37 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/2] ice: Initialize and register
 multi-function device to provide RDMA
Thread-Index: AQHVfhN74/e3KgdW5E2LHmy/NM50HqddkGFg
Date: Wed, 16 Oct 2019 17:22:36 +0000
Message-ID: <7c02b477ebd548d9a51fe6c93bb2b4dc@intel.com>
References: <20191008113330.14872-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20191008113330.14872-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTRhZjgwZTYtZTA4Zi00ZDE2LWIxM2MtMGYyMjQwZWNiZTJlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVEVRQWRoWnlPeUpBRU9OUFczbmx4V0xZRUF3OCtWTktMQ0RsMkM0WkpyTHJTTFpZblhiUmh6bjVJdFpBSDBKdSJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] ice: Initialize and register
 multi-function device to provide RDMA
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
> Behalf Of Tony Nguyen
> Sent: Tuesday, October 8, 2019 4:33 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/2] ice: Initialize and register multi-
> function device to provide RDMA
> 
> The RDMA block does not have its own PCI function, instead it must utilize
> the ice driver to gain access to the PCI device. Create an MFD device for the
> RDMA driver to bind to the device data. The device data contains all of the
> relevant information that the IRDMA peer will need to access this PF's IIDC
> API callbacks.
> 
> Note the header file iidc.h is located under include/linux/net/intel as this is a
> unified header file to be used by all consumers of the IIDC interface.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2:
> - Remove version information
> - Change peer device name to "ice_rdma"
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |  16 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  31 ++
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |   3 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_idc.c      | 440 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_idc_int.h  |  81 ++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  11 +
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  70 ++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  include/linux/net/intel/iidc.h                | 334 +++++++++++++
>  16 files changed, 996 insertions(+), 3 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_idc.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_idc_int.h
>  create mode 100644 include/linux/net/intel/iidc.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
