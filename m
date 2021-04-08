Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12B358F2F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 23:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2C53419B3;
	Thu,  8 Apr 2021 21:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dP0iD2R1lKLV; Thu,  8 Apr 2021 21:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE0B4419AE;
	Thu,  8 Apr 2021 21:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA28D1BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97AB560E07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9959JaV2lvf2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 21:31:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3143607BD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:31:58 +0000 (UTC)
IronPort-SDR: MNfMmkjyiPfmZZVHj4b0nbUVztx1zU+25npPrjSv7eFS8eMe9Jo8CdA2Zoz8b5Vy9aYA/C8fOw
 aUebnLCVaujg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="278912382"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="278912382"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:31:57 -0700
IronPort-SDR: uuErH1+TuEmnHfG9Izoisa6KdMlXioyRK35DrU1LKNY92aUe/e/JqA8nR2KC21e3THxdmsCVYR
 BGpcRoBjhL4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="449874663"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 08 Apr 2021 14:31:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 14:31:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 14:31:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 14:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPfQ6TWluDSAaLN5x29UKB2JgiTDDTFbrCNb3WkWB97VTmFpXkSHl3A+9vnNLAPcnbcJD4S6S+UdNf3nBmwdkSXrUWo5JVPxjqQGwHMynntB3/FACR2TabSdLfBRxWH+g89zULVbAe+3tjtIEpcy8JEz3e1xcV3ZDlC8E2WjFGTiew86Dbl4h83x1IquuunKXH5KpEFEY/1JgEo+BHGqCtrICuNII3g3GSZwCZxWrTglIreAn3EufE5LQyAOI6tzOnjXyK1kqyEUjv8P0mrldzwTEnNPusjrEwK/2aVcfbqegt1iZ7G/RdCXdv8gjPTc9FM+1TNqAygktD7rgWolDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVGSqImKGyofaySnZ0Z9aUYdbJSU1/M/ARAghl+Uqh8=;
 b=aol7f7haqbzJJLPOrVOTtIyFPCPXnYMm4rHYVv7iYaMkWXgfR+dyha82hGY8j4oVz2P4S4gWx5hJQxdNJsNZzcM457s7g3ZwRf/7+oxdnIFz3YIz0PxfflSsHrycgqxsSZcp+AX/Jo91JSJVs5D4dF+/7mI4ahCVpKZUKAAaxleMBV3WY4VSV2Cw3Bur53cJhD1Y5lCqVfYn27Btefx/3Voz8w7CLDK1/rU0t8HaCdhtsT5ihduLvZNIe+dcCQ/C8m/GVzwOVI0iB4jToL5sBQP693oaJPCdblg8/wH8Qkoh8tFegGidFw/aEpwWkk8NqYW+IgtT1KTbQTlZw+X+DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVGSqImKGyofaySnZ0Z9aUYdbJSU1/M/ARAghl+Uqh8=;
 b=LaVFEB8N+turiPMlCbXX5Il8hCwxWmyYn8vvwpwUu6+4qsG/JvZFoc4jfdfm1VSzNRnZpxmjlaO401bcgbXQFSAWDQ4PDafBNQ3Um4gfex0bxTSU0FVIyk5Qn87Hhd++le3XZVibbsDkhGE4IPfy8AeBoAfs+3bld1mfkLWQocw=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1598.namprd11.prod.outlook.com (2603:10b6:301:c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Thu, 8 Apr
 2021 21:31:56 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 21:31:55 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 05/13] ice: Reimplement module
 reads used by ethtool
Thread-Index: AQHXJnSqt5YmwUV78EKwJyaJmBHIUqqrMCDA
Date: Thu, 8 Apr 2021 21:31:55 +0000
Message-ID: <CO1PR11MB51052E4BAFE337C1D233845EFA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf5a8933-7a52-4a34-7851-08d8fad5bbde
x-ms-traffictypediagnostic: MWHPR11MB1598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1598C6D308248F1FD415D4C7FA749@MWHPR11MB1598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fFSXhjiURwtLE72yeqr3S02AoYF/86kKs9w04LqZPSA5V9otNRu1KknNhibydu9nN2L+F5BstbF8E/a+YnKhz/lrfkG9UlZn5QmilMM6O81UFW0icnHExf85EaWrpCpzwrou4MAW+NOT+/Sf2hLAy/P5+GLNwRYSPCjxabN0G3tH+DFvacTZwnpXioQBmwu7GjGaC0Wp6Nz/oLfYGlHihyKUM0gfLlgA3p+dbIiQs/xTmFz3nnlR3HClWbVT9bL6kSgixc696XlqFC7z8zPf4ldUVnBe3kV48ZaVJQCe7UFdYgyqK3PskiXC3cdYYX7VVAOKskT5mQazzZsotyvpV3Vsc3korN+46ogadPIUxSvQNIRTe6cXWMkcOBzzGk5dT4k0wZ2ZlyuFyvzM9v1YBojmxn+gA6u63jtKn6tt6lqwvb9Cp+BWxLFT9ArtZRKLDcogrqumZOBkh1icDqZ++3x7HlNHoPlEd92gWiE+PdTrf81pdW4b1fi2I6rILnJc6EDRn/qtb0EaR6ljrS2BSeYQkMhvCj7bcO+bZB8Cxm12mmZgLsyyLEuna9ot4351qNwdf5azx6vbupkFSrgeBLRUW/pvfjHvbl5947+hfW1sHo78FiUJbpviQ91niy53xah3zks9lVrXJldLzI7UJALU+96vkDXRFoXpolYm86A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(39860400002)(376002)(346002)(366004)(478600001)(53546011)(8676002)(71200400001)(6506007)(4744005)(55016002)(52536014)(5660300002)(8936002)(9686003)(7696005)(110136005)(316002)(83380400001)(38100700001)(26005)(76116006)(2906002)(86362001)(64756008)(66476007)(66946007)(66556008)(33656002)(186003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?njfYtcCR9Y1m86H92HYq2zqCJuM9f9sYTfzOQ46RvdtHTaY4B8yI8vvw1fwh?=
 =?us-ascii?Q?hG7cpdQZQG58KBBfVOfXA20GQoBRE7xPqEEDk3nLqIAWv1d4ykZKqWzYFOyd?=
 =?us-ascii?Q?KwpmKt6ntF1quIFVw2eM11iC1OM6FPN4rmDtjoI/x1Gxc+o4vyi6sCso6Til?=
 =?us-ascii?Q?A88E14B4f/Vxk6Qs0LwG3HkRfR+KCAwMRejF9dtiLRvll9GgZKUp9e2fy/m/?=
 =?us-ascii?Q?Y2ceQgJKAja7KwDzB5qByXOqAFnx2ES/xM891MLaAn9zHquJ3ewPSLSoSS6p?=
 =?us-ascii?Q?gERhaz4TXwa1jCFuAtcRcKT6cVOAyTEll7jmvwRiZ1CnHm5Q+ef1SEObX20X?=
 =?us-ascii?Q?HlxwCX3qxu1/yCa89ma7dTT1zd99yit6ElLIcH9nfu712VkW0d1AnfSiL8hw?=
 =?us-ascii?Q?bfdYWNUUW9GRskGBwW3ruJsgUQrjxJDUJ3uRWKtVkxhEginciYb9vDb956a9?=
 =?us-ascii?Q?o63TmMSy+kTnZXUTtAJ4AYWjALhof9IgTUITnL2w1kggRriTqUqJnqjIb0Fe?=
 =?us-ascii?Q?11kPclbjA+B0LOx3puPfguegtsPb6+1ASdAiMiuyXL0chK4FAUu24wvHZBxC?=
 =?us-ascii?Q?Vp7wmMDzsWhtdU42bCAGVMtWgiIU4o+PBFkPv3p0xiwp81mcwpw0q5Z/8abh?=
 =?us-ascii?Q?uUJDMAaazGGcLswSQCza/h/OROhvgUyLNPWA3ynMORxkI1Pe8PAFvq/znsma?=
 =?us-ascii?Q?0Tz7e2/HzphcLdRQNokaMcSpl+m9Ohc8reUKPI9TeAFQ5evvE+VnsljwbgYk?=
 =?us-ascii?Q?qGJNlYm41r2Y0L7LO9E2vN7oFXyZhi6edB8J69VHeW6XCyyfft0izhGTNS+k?=
 =?us-ascii?Q?ex9EbAP5mfGtgmfNHtSVHHw3rAGRUjeJV7JZ/EVbpeG+Do5eQtvFCcmzGkhf?=
 =?us-ascii?Q?04QUbXQGzyxFw+CYZa49HoYEFuW+ZxRxXU2pQ3qkiSJltvKB2icMI/4Gp/KX?=
 =?us-ascii?Q?Zp13V6uqzsJoe5MW0oP3XoehnVzee0lML/S4lHH748+vMKVewulgefoGi4Lz?=
 =?us-ascii?Q?+VEbQ2pWpVH0+PlHxZb97pYDR8jkd59ZWyBA/hjBb+vd8pTSIlcU/I5E8Lit?=
 =?us-ascii?Q?NwacC7eDqMIenjNSJfQUYEvoivQ9vjU/0JJUAkV4tVlyceWs1aJH0M1tWe3+?=
 =?us-ascii?Q?ZF0wiUU88w9vSgqiUxX8bAALfZLDyzf0bRjTIuA1MhDKtpToB6aNobvml101?=
 =?us-ascii?Q?b8MilcJ4ziXVjt5rKYictpf9uIy2KRN3dfFSPIPRhHXoMPXZwBSld9NpQq1o?=
 =?us-ascii?Q?P63uinvT8uSGYIfqExkp/JBP4Pa88ChphFnXa/+FrbKkNFl6VMX5fQYQk2DN?=
 =?us-ascii?Q?9DzHezpqormJH9glSBYwFHHc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf5a8933-7a52-4a34-7851-08d8fad5bbde
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 21:31:55.8717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0plc0glY4RfckcVV6hmOsLk18+ebgcrQGXEaYI2dfkPK3iBFjZdm5iEmfLl2zwH10ZuG0fnmJ26rY9dMPcIKAoK4zSs3sr3rSOu0YN/O0aA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 05/13] ice: Reimplement module
 reads used by ethtool
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 05/13] ice: Reimplement module reads
> used by ethtool
> 
> From: Scott W Taylor <scott.w.taylor@intel.com>
> 
> There was an excessive increment of the QSFP page, which is now fixed.
> Additionally, this new update now reads 8 bytes at a time and will retry each
> request if the module/bus is busy.
> 
> Also, prevent reading from upper pages if module does not support those
> pages.
> 
> Signed-off-by: Scott W Taylor <scott.w.taylor@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 49 ++++++++++++++++----
>  1 file changed, 39 insertions(+), 10 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
