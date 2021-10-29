Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4B743F919
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 10:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F66C827D9;
	Fri, 29 Oct 2021 08:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjulKFsqVOU0; Fri, 29 Oct 2021 08:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33C34827D8;
	Fri, 29 Oct 2021 08:42:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA28D1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97A2860B62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E23Nr7sWgwDZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 08:42:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0479A60B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:42:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="210672808"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="210672808"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="487501809"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 29 Oct 2021 01:42:33 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:42:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 01:42:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 01:42:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVvXBERrkoGAuvHbgeJBx0GqBOP6MkmyXeYIb69sOXuqsRgWJOHLnBwNZi0pnMmuT0jgdVRbAncA1PQ8wwMqgtZyl7fJtcZK6frwP8owgE5nlbAWj39wEgT/bmRt5NfNeZidqWxZz7EpzWcmk0066bK2b/INtHZc0xI/l8YwAzAPcHxW1eY7alEkad50QNwKjzV+9VtDLKRi+y+VLWF9VSc/uZRCddHG9ynkw8VL1t4OIa8n51bOjyn0qdV6tYPqrEpLB1wvWYqdnikBHfkir+WYJWuGDrm6g885uWhnsypD2HZ4ip5Y2rwHex8wHibsQAX5l1pg3m8CIiiPVxBOxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQHEaco2plgUAsQTbn3FOD5iKXRfe7H3nt3+0/KoPlI=;
 b=HMLn6I/AQj92yM/+oWfni2j2l18l1pL6NWIDOwgIhD/is+I19Ks1ZmsKwYjuyLbtzHTggPVfALgfpbaOiIreBOEXLji21symH/2mN2pYgqPziESpZ/4UQfXOQjHiAhaQw1tSGClQNhQ4pMf6iXWafHvws13WigttiGp2ZPfD39vA/yfk72aUEsfoUtrSk4cbUw2mQk7SKhwm7+hDAUeFZghj+GphRqIe94kXo1TqJ/RqzU292EaYJ1PCMkKKNUna8DWIvRgbnaju1VUzQjOOMEPk19FFPyioucvyFBFvP8YjAzOIPNV0Xsla90X7PHF1QpkyQ4weiQ2I10jMc22GPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WQHEaco2plgUAsQTbn3FOD5iKXRfe7H3nt3+0/KoPlI=;
 b=YOECcclbdSfuA23QAG47W8UiN7RBUH3xmVzd2NiAYvYCu2SPcn8fsPKcYu7WDda8KjfX6l7ngGoLs/lur6xaoThb9DmE/5JJ4AkV+TGDtUQYOv0O37XCZE5vetehWxzhi1nsubG6ULGRlzJN3ocU7Dq6kKLUy0JJlAmulbpnQiI=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4337.namprd11.prod.outlook.com (2603:10b6:a03:1c1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Fri, 29 Oct
 2021 08:42:31 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:42:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 6/7] ice: Remove excess error
 variables
Thread-Index: AQHXu8kVk1OkXbjWXEOaZHo2fzip5avpyfig
Date: Fri, 29 Oct 2021 08:42:31 +0000
Message-ID: <BYAPR11MB3367556668CC7AC6A233FA20FC879@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-7-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20e3cc85-1132-4b8e-018b-08d99ab80c38
x-ms-traffictypediagnostic: BY5PR11MB4337:
x-microsoft-antispam-prvs: <BY5PR11MB43375EF217E6B79A3CA3275AFC879@BY5PR11MB4337.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: huLgqqcDp/hrqHxWGET6GbWm4Fc1FngJpwlgWH4+5JXyRD+iNWLg9L/JZQ+WySeZwZS7ZyuMikfzMSUbUedo9b7GGUpOnWLNUZfX5PJ+gukNtxfEmE+ZBp4rp7H/+JKUIRuToB7IQnlt3ow3ReQod4h9OhCduUeXRFTRvUs3vD28cDkMbrodfxvcg9xIQ9LxCAXPoZuc6GKQBI7tJ/3+a5H1aHcEOjUuDDUlN5plkgrJb5aYWmayRfexA7JWJSudQ3qAiY7wpVqLGeuSLn9+ezedK37q8yCAZwfyDE994sTveXONXCxq2KBfOnVDgedvBCgu2UlTg/FMRdmOQMwnYl+BgEaUFaKaAurh6gPnydb5+OGWPSmuFH1y4jgqa2wRfbPzog8O2233EG2Jqxuhgr+GPmtudlBANBNQ15njXZsi6hXj5c0w3GH6Nr1863023GXeINSuRyFJIO/ZvIbJgGy38mPwaCJd1acQbv/nq95RaJ65p4SazwVZ9HRd9dGolvaRq8zyBdqYItBbp+BNueZ2ZPAULW+4ywMDqpfusXL42f0nus3BFVUXEvVAgGKjv+dNYVb/eDkZJrp0U1CWw+JqrZ6jbx1Fi+Nr6puP/ZVY0tH0+VXhjGj9yt/JVqlIU38wv/Ard1tL9KDCKdrllxfGLAMqqpzk61t70O83QspWHBIGLxWqOLIwD5gALogK/3iLyE8rXJ/oMONwWLvKLQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(122000001)(86362001)(316002)(71200400001)(82960400001)(110136005)(83380400001)(8676002)(5660300002)(508600001)(33656002)(38070700005)(8936002)(9686003)(76116006)(2906002)(66946007)(55016002)(53546011)(66476007)(66446008)(66556008)(64756008)(26005)(52536014)(6506007)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oLVMETcf0bacq0K7N6yW4F29IYNhh/O+FOEpl5aqxv4dagRsjSyOwRFfgboH?=
 =?us-ascii?Q?Hwk/sWUBqye8UFxLHEVD845kfj38x9A6q0obCpl5w+AK32TK3/U4h61AMCQH?=
 =?us-ascii?Q?pUMGdqmhYZUmFZmbE51EUXhvuI5RtM0M1yUak6zY5vKNuVKEo7jP/t4TC0y/?=
 =?us-ascii?Q?gNj0W/5c2YJYIs3oaK40zLOpHWYbB2HaIGOQLRCvXbH9qIthNa7H5Sd5GryB?=
 =?us-ascii?Q?CLYmntaXNyU1SXM0sBla0Bniw+Kd8BQBUQkKgaJKcylDkdMcUXCj27667/oy?=
 =?us-ascii?Q?Kr3M86iFm6LChtPETGnGkDcWXWfjhabsU6eu6xG/O5hWGmENvhcPyxDEayD2?=
 =?us-ascii?Q?M2jfcGC2rRTZJ8zZqWpazNtlP20IqEltqMRTOWKQWeIpKthI8c02JVjiF+dT?=
 =?us-ascii?Q?cQIJE/Jy2MPG6bq7eVosEcqCooSTxhuiZgydKz9lEZpwtcbg526d+ClPLM/u?=
 =?us-ascii?Q?VOPnxF0FXMSM9mqSZw7oCG9OQC8IJYPXKmztsMfP008/f2fc+l1iDnkUnk7E?=
 =?us-ascii?Q?COiWq9WsT3Nz+BhoQyM1aEfrlxPD/OKU3DIGb1AZ5AOBtrstySrtVhkjpzK7?=
 =?us-ascii?Q?Cce2Upkwa/TdIAGT1TxBszHwMxgm1pByG2/7qkJm8bARWHPH7lZMysgg9PT9?=
 =?us-ascii?Q?+W6GURKhhxxmDxHGnMrdZIzLeMD6JnYb/fIj5XzUHmtCQwye5F32tAFHpZIY?=
 =?us-ascii?Q?0lXuMpcZMKWhNqAlWf4MhvTzkJlWWXn2WUjN81+DdtvA8XV7LdvMzNuG+hw0?=
 =?us-ascii?Q?ylxp3IowBze8asIdIFVR5YGHY+1IIa1frfD5PemERrOT9IsTAa//xKO+Am7Z?=
 =?us-ascii?Q?CcDxIGwSG7UQZykQryaq7W0aPN47V/LK81BW0oNPN1GWEF9VA3jxQz7l/wnQ?=
 =?us-ascii?Q?x1rMvTXbGRbiC5LRAokfOIrhCAsI2Xck+vUdAI5bzpHDc279pHQHG+kIIvxC?=
 =?us-ascii?Q?Gp2T3RWZDzVQRNgkTPbu2O2DGT/GId9HSi4hbjPJvxJgJrtpuDJUkXUGIw8n?=
 =?us-ascii?Q?E0wscs4VtaA0vLFjftrObbCNOpAc/VlbsoamTYlZ6CjTQZihN5Z3LmQUF2z4?=
 =?us-ascii?Q?O4G0aeWXP/aIqcVFsyDGItz1jfTp39D6tRQJjB8dJofpjzZ8naBRIhQwjz3i?=
 =?us-ascii?Q?59Bv0t9nKNB1BA5N+RAI3QqTyowBIjiHB8pO8gDTvwl/SNaI7TuB9UDwsoqk?=
 =?us-ascii?Q?U0ichU+X/qlGaFKZwodLyejYxS6T5B4YrXRp3iWt6IK6ftkPYJlRTZEC6Z+v?=
 =?us-ascii?Q?mNNQWvyJYXQqQwGN23PqUp3sVsd+XenOYybwgS6dRAfXtiu7xqh21YS5CNjY?=
 =?us-ascii?Q?ho++uBsbMZR2uTC+7mZBRAXBr9AIciD3w3D4yCLqtp9mbpBc/CeA5aORdOnW?=
 =?us-ascii?Q?zIYPXVjm9EM80iDeZOfJrDTYN3tC8wSOtYmlDl+uJO99d/IM9Nbas34WI8Ds?=
 =?us-ascii?Q?z/WiWF7M+2DphSw7kpoVqzSE49C6rFgA8jHH1R0F2BgzKJ67D9Kjg1Jx0m8G?=
 =?us-ascii?Q?ym2B6YfFU1AoGNqDcceNFsQsPus6TOM1lsO5uefMxq9rYP6Cx76J6R+DfGvd?=
 =?us-ascii?Q?ekDybSFOjZ0qkq78HxvsNsiU+Axre7r8PwSSfxSxZfip6kHmP6Jwt90Kn6M9?=
 =?us-ascii?Q?tQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20e3cc85-1132-4b8e-018b-08d99ab80c38
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 08:42:31.7953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i+vtamRm2ZeEeVdeO8oGEL5aamOeVH6vBhVUNlnqWEC3lgghZr1FithpegKAvJWuk8PctBjfUC6yZhtXk4E/uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/7] ice: Remove excess error
 variables
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 6/7] ice: Remove excess error
> variables
> 
> ice_status previously had a variable to contain these values where other error
> codes had a variable as well. With ice_status now being an int, there is no need
> for two variables to hold error values. In cases where this occurs, remove one
> of the excess variables and use a single one.
> Some initialization of variables are no longer needed and have been removed.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |   9 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  32 +++--
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  79 ++++++------
> .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  44 +++----
>  .../net/ethernet/intel/ice/ice_fw_update.c    |  31 ++---
>  drivers/net/ethernet/intel/ice/ice_gnss.c     |  28 ++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  66 +++++-----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 120 ++++++++----------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   5 +-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   9 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  24 ++--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  44 +++----
>  12 files changed, 210 insertions(+), 281 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
