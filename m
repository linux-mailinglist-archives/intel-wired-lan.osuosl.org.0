Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F111D9CFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:38:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52AB586CD4;
	Tue, 19 May 2020 16:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgxYKhRypd6V; Tue, 19 May 2020 16:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 511D086CBB;
	Tue, 19 May 2020 16:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2974C1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 25059887EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZGgiPY9YVOg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:38:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81138887E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:38:08 +0000 (UTC)
IronPort-SDR: 7tBeJ1MwHH0G2vjt0S2Zzd7jcW+L0xCqbKX37cUWiUSs1qSxXDX6UFr1yuVjIPGmypWG7hs8D8
 atIGDYuxu6Nw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:38:08 -0700
IronPort-SDR: 0dT2eImGa1SNP2Zh8Byu0jyVZmhQKpeUNz2cbOCqns2pDMeIaOx8bII1zAo8wbVrx9OPYnGKYw
 tC5RpBHsNzyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="308451484"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 19 May 2020 09:38:07 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:38:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:38:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 19 May 2020 09:38:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ePPCUwg9/mcDguymKvYrJK8jTQibbPD3PpIdA6tFC7PWe0BDv+JU5Wuvlr5sHq4fmsr7zNIf9o33yhS6kz23zpziyApPv5bwgK9M8SsbviH8vQmC2EPmeNvdvI0yRFpP93J96S1FFyRi6dJVXIXVRvg/jqFiwE5Lu09A8oD5SZ9F1RTNJLYqX9//IEbJonSETYagYs2ps/3E/knYA4S6038fDHFSgeybHQxDihbneuy9QZ1TD7IAi8ElPtV8WMWhZ9cYnOSvo6dZiq0VmW6iaD/V530rXc1d2zCpA/9pHspYitqjOQKgJze7jdks17N9OSXZ9SWGxTR7qmWAsp11DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IawSTsNHhkWMlORCdZdvGVFmOBLA830gS86z5cgUXc=;
 b=iRJlqaSFEqGuVDQUF+WVZeGTfZa3VJfIuYuve6EQP8ynYZMCijmv7AXoEU1ytJpv44FVOVOWjgmnpqZUmdm/p2YGkhsuUJuSYNxUndEYS2/+5ps6t1oeqz8VCGUQPuU2MzmvGZWawYBEGChjuBM1NWXmW5DJCcJsiQRvbz3NT3gj4BX1ZQsiWWL/rkJ3L59hveGZvvPKoi18n6BQJfKn3lSIQHkyy9pCGSfSNvCRLHO8UxLdJyzMARwrxBzSXHFPGDCpv8dh3rn7zpQsVbAs9eXhS1I7wTShzrSX7zwV7Eglyy9dfsFEA/dt3VfzXLSQ8HxKUcMSJgzfkYZODuwIxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IawSTsNHhkWMlORCdZdvGVFmOBLA830gS86z5cgUXc=;
 b=QFeY0GImrPi5vBXaj8nW8bzeqSZshQM3k2btx3ayUd0JSmsvSF0tWIOYMFANTkS3aWz78kTfZuoNjX2NKf4rW5LqsuffwiUUrIGKaYpqRZv3NlV3BUZuBYELAf95SHuP76NwmZut9uIV3SSbwyjGmWQHEUKmbTDzPruW0KAYQ3E=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1531.namprd11.prod.outlook.com (2603:10b6:4:10::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.31; Tue, 19 May 2020 16:38:05 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:38:05 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 7/7] ice: Implement aRFS
Thread-Index: AQHWJ/lwu1jFUquUGEW+g18mTbn3B6ivp6uA
Date: Tue, 19 May 2020 16:38:05 +0000
Message-ID: <DM5PR11MB165915648FEE68955FB201498CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f922115-4d14-4472-e9c6-08d7fc13018d
x-ms-traffictypediagnostic: DM5PR11MB1531:
x-microsoft-antispam-prvs: <DM5PR11MB15314DFECA01AC37AA4E4B738CB90@DM5PR11MB1531.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t2RRLFs8A5v94zTcuPfAcfm3smIPR0NIvDFH04TV1Drb2QFHzVD/tiY6YjqT2ierAZiyruw3O4T79I9UVtLoAxFa09CCX6/C3EQn6X6dobznrw2Rt9Y9fJvd7Q/OC59Ey8Vngmge8Il5wsNAI/QwFiDaLDv4J6ojK8+D3U9G7SDpB4/u8Xhdw4BqoKyN8njcZQLeBQCUwimOyECAodA4csmaMWwSaP4EZ5ibO302ef5wFMbcBCjBZJ+7pplOgDG6+0NG7J+QNC+GSl6BvigGmAAZs9fBWCSntfxS4EQhsJkukIN2PXyA8migaeQy9imQu8srAfUMTfPIGH7E2pAX+2yIDkUL2DD68mfTCdGvJZEirylm1C6dL58442kEVzaBklxihf7h9vk5aq+LGvjEuEHQyU4fwa0WkzXRYqWGzFK1m68VDkmiBXpaGz8Abwm1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39860400002)(136003)(376002)(346002)(366004)(66556008)(64756008)(66446008)(76116006)(5660300002)(66946007)(86362001)(7696005)(478600001)(2906002)(8676002)(8936002)(53546011)(6506007)(6916009)(55016002)(71200400001)(9686003)(66476007)(186003)(52536014)(26005)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: B21xsm8AsVfmP4gy2BE5+IsRlq8HvB5omY9sSiNPbT5MO5gMxikiUCLE286x/7d9SQv9ZK1fgPQodtPo/lXWden/Bb24+spcVfYIbAmh9QvB3K1472qKi4lnCRSzOqqJeLDTY265PK9tbgXB+qUXUCsMe3P/F4QsZjeSjXGfqW6EzOQ+HewhggCBqYhWuMzG88s37ZrMk388q9FTGb1QEZxQSRgLk+EAB5zXCv2r9jvbxakt1p9zvicTI+7t4nrqzYFUWXnHTWiMj9xQvH9kVD4Km7/UjHpsyEfNgzAF6yXhvzjwdJHB7VvWHD/1fVZs3hCY7Vf7xMIAYIZjbPzzEyFSEcpVvCzqBIfurNUD25/AVvKck2Ir/e77pDPn5I7M0RdH5uHqdGogEYkjZhJOJr6GlbcSUXV4QxxQ/IJVy2ScFSefgviPL2EFj5KWlLJ0F4IfE0ym8Hxumvr8mBH1Ik8/wvHspd5980Jmyrh42Kg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f922115-4d14-4472-e9c6-08d7fc13018d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:38:05.5271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctHoU5KN0iNM0Nqpmr1WdugWCdsdb1N8yVFh5CoNzf6437Iand7c6sUs1eye6S2OhtawwfUQEDu70OgJrMABDZAe6lJG7LPnPw+/zNoONGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 7/7] ice: Implement aRFS
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 7/7] ice: Implement aRFS
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Enable accelerated Receive Flow Steering (aRFS). It is used to steer Rx flows
> to a specific queue. This functionality is triggerred by the network stack
> through ndo_rx_flow_steer and requires Flow Director (ntuple on) to
> function.
> 
> The fltr_info is used to add/remove/update flow rules in the HW, the
> fltr_state is used to determine what to do with the filter with respect to HW
> and/or SW, and the flow_id is used in co-ordination with the network stack.
> 
> The work for aRFS is split into two paths: the ndo_rx_flow_steer operation
> and the ice_service_task. The former is where the kernel hands us an Rx SKB
> among other items to setup aRFS and the latter is where the driver
> adds/updates/removes filter rules from HW and updates filter state.
> 
> In the Rx path the following things can happen:
>         1. New aRFS entries are added to the hash table and the state is
>            set to ICE_ARFS_INACTIVE so the filter can be updated in HW
>            by the ice_service_task path.
>         2. aRFS entries have their Rx Queue updated if we receive a
>            pre-existing flow_id and the filter state is ICE_ARFS_ACTIVE.
>            The state is set to ICE_ARFS_INACTIVE so the filter can be
>            updated in HW by the ice_service_task path.
>         3. aRFS entries marked as ICE_ARFS_TODEL are deleted
> 
> In the ice_service_task path the following things can happen:
>         1. New aRFS entries marked as ICE_ARFS_INACTIVE are added or
>            updated in HW.
>            and their state is updated to ICE_ARFS_ACTIVE.
>         2. aRFS entries are deleted from HW and their state is updated
>            to ICE_ARFS_TODEL.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |  14 +
>  drivers/net/ethernet/intel/ice/ice_arfs.c     | 663 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_arfs.h     |  82 +++
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   8 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  48 +-
>  7 files changed, 805 insertions(+), 12 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_arfs.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_arfs.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
