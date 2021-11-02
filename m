Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A0442D58
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 12:59:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E20B94033F;
	Tue,  2 Nov 2021 11:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wRWUFjCQdHDn; Tue,  2 Nov 2021 11:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA09240335;
	Tue,  2 Nov 2021 11:59:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8F171BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 11:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E039F40335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 11:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uR4n2IhjuOa5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 11:59:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FE0440320
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 11:59:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="254852553"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="254852553"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 04:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="559973385"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 02 Nov 2021 04:59:50 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 04:59:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 04:59:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 04:59:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 04:59:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NsVGq37nKBSLnYDoQuMtZw/BTxCveJBxxEmrz0q+P06eK8c8YTvNVeu1Y+VEyPAl7vHiroKVHkH3Cv/sWat2yRp7YJycjxk+ToO7RU/Ku1xGRVpHUPz6RuRjVxW98um2pPPlnTrF1vGhsyp0JUBT4W3t7qh+AryYO/ty70N6xOeAsu9I/QoSZzf/qxKVj7mGkeaUW+Ef+cVBMhgiRcJmkq/xBnLsWmwdH/aV8BiqevTaDVFrzKKkomiWZ/fWbDmt5fDVQaA/c4uIOtdk978rbkaU2Y4bm2UKw2K48VEiywTrjP0NBTMrpaZro5QFhmXK4VHgGmkNgdP6ZMCk4m4Pvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dMfkqCOzMxw+jijw8U7oXTtPRJDHOdeKeu9fXhlrs/A=;
 b=iiBwCXM2bOayAnbhTjVc+5mxTH91+cF9fx5J/PajKKCJv+iHC/kjB6h/f76YnMpBQ5wL4cwssk0dBfZXWTk22nKG47J0TMSUHKckq9mQ/dJQLduP4qHysFaaR6Qh5HEGavXSYrq+2vL70jgNhgTmjEB0gDzcvzXeJyMysLS8nGuxL9FHFoAuXIZt+87NTe6DY0A2EaXNsN7tIlQWEv8TRKavXqVkMBF1y9mM7pFhi/w0hYbHdmO3CTbecM513FoCHcq9BtZnJk6XbzfvvEOQRE3E4GRlyOn33eSuG0/FaZJ8CPXC3QP8e9VNrBv1AmyNaGgRQDZpuEmkagiSgV7FJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dMfkqCOzMxw+jijw8U7oXTtPRJDHOdeKeu9fXhlrs/A=;
 b=WMrS3WE82fRDJ9zMo4MFkcdgpzWYcilXv5aOOsSSMoUHgpUknzmAqNUQb/5nMGK8GXGlnzPQkFAWUviTAjnYOlQulewomadnrYV9MWVu/aotMmEXHLYikXn+hJ62qYb2NUUGnPVJJ6ccTPIM065mepgbb949q79B4nKPiYjOmDU=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Tue, 2 Nov 2021 11:59:46 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 11:59:46 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] iavf: Add trace while
 removing device
Thread-Index: AQHXZ22o3nrNvOAXL0G6DfCyZ27jaqvw8yyg
Date: Tue, 2 Nov 2021 11:59:45 +0000
Message-ID: <DM8PR11MB5621AB3CC7DE3C2BC6BBC3FEAB8B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210622134348.342191-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210622134348.342191-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9178db76-31dc-4200-700d-08d99df843ac
x-ms-traffictypediagnostic: DM8PR11MB5573:
x-microsoft-antispam-prvs: <DM8PR11MB5573CCC714FE939B3B63AE38AB8B9@DM8PR11MB5573.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Rw6wYYD2Yenr5PdLElqUo4Jl2HfyToxTuXffJ2b3TCU1dgr/IfXvzW39dcpHjcF9guBf/meBifLVxaY5hRyvbRtpS4Kt0cCWRJfaVOMTvfTqH96wqOfvh5+SHT9N529navokAtNyG+PUvTea4BNa1pCzSoXVunHzJsS5oXxxrFmCov4qC6L3vnjuG6pik5W7kav07qCtQKSoHXbvkugxbG7yRyvjS82KggcXcX2Fv4fqTxnzzugv77ySnXTBDAHzobCTH2uRsQ81AgfGLCXzrTTjzEGH2BxtAmPIUkOKQbs4amwbUVIUsy7pfEmzTj5eO0B4NrfM1NtEWsDG5+wAA+fALwlQgOVzWT5gqUkmNc8EgZYh7H5NQAHzBeVXmARm6iFujnoxcoNJC4fATDd27ycTCTElkvg9LseVmDU+BRGR3j0G3YqGZuJao0skipa+IWR1c7ei+15WwKYm5SKE0C414Lu9qrVlVDrPi4baiWTpVMRey7ydQ8sWnUCDKrH+pV27FBSIujr9/1rSV6htjRFY1UuUWPfbopoETNYOGnZ4iTB4bwsyE1j2I6V1lf+ZmRv0U13Syk6h6J4kNNMssfPZcKaTVZaj1PRNp8rASvm7LEJCHGkJgnuIX3D0e9m7xs3jF1bWgc+zgzSwGksIcwfYfOCwDZcCNbdlKfbJ6A5Po3Gr0sCNqHarbvffTwSNsBHdWGPqnB2KcpCpmO8NQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(9686003)(53546011)(38070700005)(186003)(5660300002)(71200400001)(55016002)(107886003)(52536014)(7696005)(508600001)(26005)(122000001)(76116006)(8936002)(8676002)(66946007)(33656002)(66476007)(64756008)(66446008)(66556008)(4326008)(82960400001)(38100700002)(4744005)(2906002)(83380400001)(110136005)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?msGpdpEu5FnCog+wqed9mgStGhjkRj6s3fYtonfeWQKhqXwMwj9jnOGvsR/O?=
 =?us-ascii?Q?cXaEg3Mft5q9+wnIBi3P2GmeRmpuledU+EJrNeFYhzv5BqcR96UCAZkhN0Sh?=
 =?us-ascii?Q?Tu5uCXYtb72Os1rR6QB0EnQDF5c2PmyVab+r9tH3Dg3b9Kw73WuuRkXO27Bx?=
 =?us-ascii?Q?2VJqZ1NYzru8cUEIQTnoK7ClM22kMIRYel+OksNOSz5Feq6pqpV8tzKpmFWl?=
 =?us-ascii?Q?4bgfO6ZeJN8Vdkpl/KEPvJmJtYroyL0/BS3BKywCUiKXpzcPbBuJUdk58Yt+?=
 =?us-ascii?Q?nGQOZVUuDZe/j9xhWauy8IYfzEWzILtnyx4LCUrxZGE/LbZNAWwVvzz/hBa6?=
 =?us-ascii?Q?9ly0lgBhJOkLJS6IYVYcCqJ9nqF1axANWH2fdWzB0vwdOtYAvs6Bt40MfHEc?=
 =?us-ascii?Q?tG32cvb04WK6WnGhJTOtGM9/F+Ge/UBPyCiw3j8H0Lvl+u14mX3sz1eWj3dn?=
 =?us-ascii?Q?5k1oTzp1huO4HmOHxhLFZHMe8E5r2ISHLvdBA2rQG8e0LsQ4Wvrd+d5qOS2n?=
 =?us-ascii?Q?Kq2UKu2DTF2U93aPpvhN8pjvo7/9Zt/u1d8dkBqJVUyuWDV/NuOWAYbuzXUa?=
 =?us-ascii?Q?+xobeDsvMWK89ST8J+gdTKJRVWU6cx5wfkzzcPNzhqztHP6HP++wgp89/93A?=
 =?us-ascii?Q?TWtQSJQgt4W/uwaktWlTWN6acULONLJiO9RfzN8MnigKf/MlQgjqgayZ9N45?=
 =?us-ascii?Q?mZN3ltZZ2LHQjPujb4cDGD+P+zjm2yKSDl8f6sF9j8WarBGXNJggqYPjCNTM?=
 =?us-ascii?Q?7+w/PqA3CldMLdq11cntRyaa/FlS9qfrOSME3HFp93YFT/QQYv4Ba71iG6c6?=
 =?us-ascii?Q?db6PeIIl1P8zGfbk+oH5ChOjKMJgrHMkJVbPUw0QNc5alXQlI+Ncg5zbfhnn?=
 =?us-ascii?Q?s2wz3EiGolTb7ymprtJ+srD8xrME+bjWl6UspYYSP9cDUOGHbKsUDr0F7iYP?=
 =?us-ascii?Q?9rNrd/tyc9KplF24JLm9IV368NPMjdoDuEqwAePQxbRzxZ3Z4adS1kKWN0WX?=
 =?us-ascii?Q?ZRaV3NEHPwWJQsitaN4n/DI5KuWzP+uZNEw0wPDM+EaROcfQhSoAatkWgZST?=
 =?us-ascii?Q?p+KMcwBKK9XgmmSr9GiM0v4F93JJOhYwy6TSRjGnis/AwEl5BgYTRMSCnRsP?=
 =?us-ascii?Q?Ar2ib6wl7oluFVR8Fk86WqluQvgC44dGXvh6aHx77FrXz2g9EsfMVDVMY6Uq?=
 =?us-ascii?Q?rmZ9D3aXZa5D9qHzpxc+DqfUorXm+TcgA7EHJYlEe90hGaS/uJTgsc8aTt3Y?=
 =?us-ascii?Q?AyXqwK/v076bhoB3+Kw6GyU/Y5WrmN7yYp5w5eGRtEZFhAiDsTiHRzO6zImM?=
 =?us-ascii?Q?KIMaenYkXr6XUp5aKWPoVMdPMgDUds6KKD3GDcNwl1+WqHxvSoU7rxD0NbuH?=
 =?us-ascii?Q?p4/68pvP2AD55QWmjIEz9+CwR/CzSkdAJ5yZ05MItc7Dh0XdnfOnY/TE4G46?=
 =?us-ascii?Q?RX6BGO6zNM4sg+TmtUvmLI4jNChxkj3fIUMTn2k47xZQj9ysJ87qaNQWqy8a?=
 =?us-ascii?Q?DCID3P5/iZMLH41L/j7ndiM97IzIg/9wzp020LsNK9SKRwKiZBDtj3s9m3DH?=
 =?us-ascii?Q?zxU6JG2HetrtiS35pRQmX1V9dgKB/GqidBEgIu5YVdhNDipx+MtVFGLSQaAY?=
 =?us-ascii?Q?uw94A6//YU/IoosknSaumEetQc2y5gkTblCMj2wn2VeypF9nVYS94I0zakDu?=
 =?us-ascii?Q?vjN9WA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9178db76-31dc-4200-700d-08d99df843ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 11:59:45.8637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AWFgVkNtMcRGofuKhqXrw9rTU+Cn/RWM+pKSwBCyLhydIeFBhTGZgow55HX/MamIzJ6YkV9NzPJ36P7u+cbZNYb2i6cWplAEJIRXDfvyT5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] iavf: Add trace while
 removing device
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: wtorek, 22 czerwca 2021 15:44
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add trace while removing
> device
> 
> From: =  Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> Add kernel trace that device was removed.
> Currently there is no such information.
> I.e. Host admin removes a PCI device from a VM, than on VM shall be info
> about the event.
> 
> This patch adds info log to iavf_remove function.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index d64e2567e16e..60f08a5276b2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
