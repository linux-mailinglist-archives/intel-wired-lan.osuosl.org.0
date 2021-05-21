Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F61D38C5D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 13:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B0A4405EA;
	Fri, 21 May 2021 11:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-7ZN6j4bP3T; Fri, 21 May 2021 11:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F29840220;
	Fri, 21 May 2021 11:39:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BC5B1BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 585AE401E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5A5kaMzZdP3L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 11:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6514B40245
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:39:53 +0000 (UTC)
IronPort-SDR: e/s/3k6TwCmhcWx/ecJLXFTr2+8Fi9vExBiiejGI2jIgv1NuFldMgq+gCsNj5fL/sVMUYJ6/YP
 lvhwHwt+PZ8Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="188863010"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="188863010"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 04:39:42 -0700
IronPort-SDR: g0IR7xqoXJCvWm2ffVniBs2MN1ieMyD+JePs6HzzczZV3DPwIBi0IRc1iIxpluMM6rI7ZyWjFR
 NoD19WRTwu2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="544043439"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 21 May 2021 04:39:42 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 04:39:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 21 May 2021 04:39:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 21 May 2021 04:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+gyORullgVTJLFjvTIZ3/qiIz7AHMsPipBZEYEMsLvFGCmsFC8WAVLC1Cj34CoMG7aMFW0AbcbKy5DauC0ttL3UDr/QlqjoY6e9ycOs7U8K48Y8XmBuy9Y/ECG2wX46TgBlXSbLx/jd/A2AX73hsT+t4EkuWhiORg+kHnbE5SyL/1vHdWagWDYM7GELUzEBA5GwoHF2CmD/HVA+/DOg7rNXC3Rd5jSxTwz18GYibgwruStYwlnIpPmqOuKbbejW70o/1X7Y575A4pQ9yn3AFfVXDCFn25jnxOGqub9hf7wQnDmWqGBAI8ALyQ/x9xV5UxP1QRjBypy4xA6JKaZjgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYif9R5KW+PcLN/EqzLBSPanI7+fk72uW3Vu07P16R0=;
 b=XR5tjA96B+2VTNz3vZSrpb5aGpmCA74vOfD1iTXU76a1k/eHDhIFBXK6HTRfk9ujDGlToVA1BO+QATbXRBu0p1ywVje52CN/Q6xSQ51Dnzm9rIq9m17Q5fx3LgkuUBtXCmWL1h4YhBxQBrfkSdKXS+oFUepgS+VP6rGGrQ/lPcBUGcJzEDkvboYDZVaep39iOs/DYF5twhRdugdHVxKBVl9jbP4VZnDASn9OED7cYwdrVmczPMgIFBsuL2Z1F1npbnFG7fffgiu6xirDp+ZqVSf19LmQPGTYGO1lvHis6dsk433ZR4/35INV1d6uinxpOlL50d6GIq3fgZCxz3eLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gYif9R5KW+PcLN/EqzLBSPanI7+fk72uW3Vu07P16R0=;
 b=GZ7cpaWVW0UAKYL+LYuD6xrOzrRpcrYthHov3LCSvn1LydaKkDdubpHlK9J1NRbuOC6RXk/4C/k3G5GIbvlJXmUNFyOGlaKWEwsPBpGEffzqeCCf6HhOKHAZCnddGZ2JnpCyJ6G5ehPUueZYtJVQLg0aUy9JbLPmVSJQnQxow3k=
Received: from SA2PR11MB4940.namprd11.prod.outlook.com (20.182.128.141) by
 SN6PR11MB2701.namprd11.prod.outlook.com (52.135.89.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.26; Fri, 21 May 2021 11:39:39 +0000
Received: from SA2PR11MB4940.namprd11.prod.outlook.com
 ([fe80::2852:d6e4:3f0b:b949]) by SA2PR11MB4940.namprd11.prod.outlook.com
 ([fe80::2852:d6e4:3f0b:b949%6]) with mapi id 15.20.4129.035; Fri, 21 May 2021
 11:39:39 +0000
From: "Jambekar, Vishakha" <vishakha.jambekar@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 3/5] ixgbe: add correct
 exception tracing for XDP
Thread-Index: AQHXOCg7QW6227Q0ekmgiDMflhaUlqrt+oVQ
Date: Fri, 21 May 2021 11:39:39 +0000
Message-ID: <SA2PR11MB4940442F818ED0DA99E5F462FF299@SA2PR11MB4940.namprd11.prod.outlook.com>
References: <20210423100446.15412-1-magnus.karlsson@gmail.com>
 <20210423100446.15412-4-magnus.karlsson@gmail.com>
In-Reply-To: <20210423100446.15412-4-magnus.karlsson@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.241.226.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18c723d5-199e-4401-a4c2-08d91c4d1e6a
x-ms-traffictypediagnostic: SN6PR11MB2701:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27016533959F931C178E2FAAFF299@SN6PR11MB2701.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fYLRJaMX/lOQkL9NYzD1kv80wtPwA3bV4GgWhm6ic5h9V20dqa/CHfdRaw8XwGvsVLHe6yVqmHzrA5Z1Wm0Z9ejcUwCFYytvhGo87xfJmGMhRk/DqyeloXqoAyWzND7EKdGAOgoDllfAHreFx+G0loCnsRn6951NvXuURTMWK+FzNnoXrSB3ulDoVGzyJp9bM/33XRdrngCY7zvGcCv1tblmZwARm2WTXgVASMUhAbarGE0HaIG9klxUJPWvQDx4fm4ZH5kNU3MTt/avLaaT5eYc44pM2ZEXOvIzwBRQEsKyfcfaf0hqn6gZysV295CMtl/CFkInhuDziDkwQ7cIvBoKPmlQ+++CIUyqjyfGbkkXpwjRlEyVe36iOo+Snjd4I7m+gg81+jAYnNFV7qIIT1WW4cJ+FrmvODeJmf3J5uM9Mi7kv5ruZFNLvCEjr1P018RzNL1vkNda6vsEOLS4yFq1fvKmj9p22Quxh9Zh7FBLIdEYWoG5ejoX57NQN/6CwKO7t95MJc3YW5/fqDSkf7T1ZwWTnYZwmtxAryW4Ra9W+0yjHT2wXUPDJchdPKCmJfsApv6oGrmL8jBSYo1hd8zXr7PFKLLM7R/udLavwhc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4940.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(346002)(366004)(26005)(83380400001)(9686003)(8936002)(8676002)(4326008)(52536014)(5660300002)(33656002)(2906002)(53546011)(66556008)(64756008)(66946007)(66476007)(66446008)(55016002)(186003)(76116006)(54906003)(6636002)(110136005)(86362001)(316002)(7696005)(6506007)(38100700002)(71200400001)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?0Eo7z+pFbCXC0lrEl9LGosmynbXXZelaPhPR4b1s3OzOq+OpN477M2qLJkla?=
 =?us-ascii?Q?JvFk6b3oynekK6AKaDCKNGmO1ChIKmgW5HCaoogADACK8rhY3w3PQqUlNUSu?=
 =?us-ascii?Q?pAhLD0Vb0XDyWJ8RnWxM8WZuqr76R190OOrs8Fq0hcOJ1N67IUWMVPjPhKF+?=
 =?us-ascii?Q?xLIPCCiUpsqlFJNC5Vkf5IxICEn766xr4TO/iw2S5iZZ3FLnHhuVCzn3V3wu?=
 =?us-ascii?Q?bfZoKYNS7B+poSHDoO2bHN73FIR0lYl+lt4qM/IAa6U8lcipxK3gUc9hU5sH?=
 =?us-ascii?Q?DKKgKkxJsH46cIzBv7XGxTdoM6XF+HJqb+gf2kiy7l/X6Bl0lnFffInUh4kv?=
 =?us-ascii?Q?M+7DVWFvitaI9sHJyEHOlxydnWQpohM1Cj1NjR3ZrpXYnMQjJILvX1/JyFXm?=
 =?us-ascii?Q?FbUZLSOufwegZxtqfs6ey6d9GtBm0ma+xgKoOh/vaaHOiYnzL8hg5YsZ0DSE?=
 =?us-ascii?Q?ZjBH9ItcbhTslx8+vxZII75XnXDjtocbsytqiCqluajsYtWvvC1zJVxZT5Yf?=
 =?us-ascii?Q?eJI8mel4CZ5Cp5qV2T2tvhv1sk62zwcMcYcRtLk/D5Wx5w3lCWrghG99rGNn?=
 =?us-ascii?Q?qMsbPLAPRR7NpEedNMTZxLf19FPsL8YrzdObnJswBU6daZmC3Yp76A0tPHUF?=
 =?us-ascii?Q?JjrIvMPtXApbCDnPpEMZRhufn48iXQqjaWnY0VfGjhe3yjyUGJFV1DBTS3vH?=
 =?us-ascii?Q?RZdMftwTbUa64byf1HciUIVUYWC5aZrEXkzCHvgKUPN2BI2MEFLQScJrZr0T?=
 =?us-ascii?Q?LAtYgAbksrJqRTgG86+rQlmOdmxN3ZPNzepOKWyyUzU5II8SStXwCQmoFwzh?=
 =?us-ascii?Q?8T+ghINJjkm6TQaClr2Cyn9t/ogAEdxEgopzjjVhe2rem9R2APcjLuTabY83?=
 =?us-ascii?Q?M0lSr5f7X6gUleqerbY/4TvB6IgGLzpTUgZVTnmFhermu7Pf1gOc22M+x9iI?=
 =?us-ascii?Q?5NsZcuta2E/4SoBJ7MPehwzp4tz76qRPqnuWSOIbMNodObIBLWXriLRtz6Tj?=
 =?us-ascii?Q?bAVv+8jB938rICOGMI/Kl4CAo94ovBUIUwhXtgp16mDqFl+BQAZUFuDsmfpo?=
 =?us-ascii?Q?jkDz9P4ZAMvmz93+mNFoj93CsJl6G5Zah3PkA4vtCV3D9dbRKsOWf6/K/aUB?=
 =?us-ascii?Q?uCRdzH7CfjGPXdQqeptyLAcqFeZqD8HLLuicXruRDGLdB1P0ls9xAR5HSyf7?=
 =?us-ascii?Q?sPsItqYHTDtoLZa8v14KqaRlJF1yPmQoj03iiXQSO83vsbNWl71VpRXCSypz?=
 =?us-ascii?Q?0IuEHnWuEZwTkfoQAdRvgPt++MulrMuhq7FtS756ZBszzGdKmGZ7bHcnMV76?=
 =?us-ascii?Q?23SyjNHqrFQggoywWB5ZWedT?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4940.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c723d5-199e-4401-a4c2-08d91c4d1e6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 11:39:39.6178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K1V+rgIGZyBA5/EQ6fnbnx2H04VXuGMl7wQ6CRJ+JfGaCbwaxPg0DvEkloNKyYRq9UinhZ6nrI3zfpzf/g1jEnDfw/0PMnbTWvyXKS4NTmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2701
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net 3/5] ixgbe: add correct
 exception tracing for XDP
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "brouer@redhat.com" <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Magnus Karlsson
> Sent: Friday, April 23, 2021 3:35 PM
> To: Karlsson, Magnus <magnus.karlsson@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: netdev@vger.kernel.org; brouer@redhat.com
> Subject: [Intel-wired-lan] [PATCH intel-net 3/5] ixgbe: add correct exception
> tracing for XDP
> 
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Add missing exception tracing to XDP when a number of different errors can
> occur. The support was only partial. Several errors where not logged which
> would confuse the user quite a lot not knowing where and why the packets
> disappeared.
> 
> Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> Fixes: d0bcacd0a130 ("ixgbe: add AF_XDP zero-copy Rx support")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++--------
> drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 13 ++++++++-----
>  2 files changed, 16 insertions(+), 13 deletions(-)
> 

Tested-by: Vishakha Jambekar<vishakha.jambekar@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
