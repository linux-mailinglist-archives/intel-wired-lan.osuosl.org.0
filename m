Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9768D4423B1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16341605D5;
	Mon,  1 Nov 2021 23:04:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIaZfJOoHGym; Mon,  1 Nov 2021 23:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FA1760604;
	Mon,  1 Nov 2021 23:04:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3B8A1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2E3C401F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBQtrQjdJXpQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:03:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EA78401B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="294598648"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="294598648"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="558890907"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 01 Nov 2021 16:03:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:58 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:03:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GZ9q/y7KAdWCtGSoGJsoNNPmztpbHMdly6z/oBsulkzpnwPpoX/Yw0DtedzGBXuTwgnPxl/FCPPX7OU3/E+UXrvIk83HPBjGYc56TVJ/vuxsjBFv/+60Uizy3g9WFHj/SC1TcxHIcpI4NOIHDGFugUhQZKV1KhBRCnJYygPcui17d99SS3Q0fOjxGUQG24lts+x26ClDR7D9X9TE4v3zE640Du8oVcwgOXo4c+oWx7veIPg4OTVOYWLmp5/SZxVdL5fb5DM33FaQs4U7HF6e6lo9Ox+rHv64MyChsAQ3iNa7n+HrOQY9nC2/yqhCE1VF67ip94Hd1OHg3nfMRq3UWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AA85oJB1tluK9Mra5El1GZA/OhB4aAPZi8pZfrTcBE=;
 b=YE4DjwciRmR/GIj5YowEqI3U6cPtr7p3COeZT0e01v3x/O3MRLB7tZfjjEB6Xfmbfokki3WjFjpCCHg2z39AbztSX54OX1XGAI9QncmfvIs0O8CRBHJI1Zr3CTTrokfh7ROD2uQPIXDseLbUEEEI4gweKqhg4NxDydddjWjWmnXCR1FuvbfPLT0eIbafhTnwQaQJ8lE5WbZwnJlA1V1FgmN4g1oPAN9FlVpcJ+D+hnGgpInRjD12fmpX3l/SaVFxXJGULpWNXsCZXhNnqKB0uKM9KamBYc3fUFhWzUstrIgDnJTW6sgFtkWtqF0yzMXvX9qcqPBY4vYSBgBVfbLrOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AA85oJB1tluK9Mra5El1GZA/OhB4aAPZi8pZfrTcBE=;
 b=t4CXHIoQVuBj7uy3QgZJGdrMkYwE1T+WTeJPJ+cqvErCPsw9Li5f/kUnKVZgIR+jH3+ygc69Z7byRfEw2iUYqTKQ/t+sY+9lwC/DJAewldzcUEjaeMyn62RBpCkJBQX/RKu+im6MOStr7vFD3l98dOCoDTEvQUgFT4/y8MeCx2Q=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB3315.namprd11.prod.outlook.com (2603:10b6:208:6c::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Mon, 1 Nov
 2021 23:03:56 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:03:56 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 3/8] iavf: don't clear a lock we
 don't hold
Thread-Index: AQHXWWNpRRu8b3kO/EucD2iJVff+YKvwNqQQ
Date: Mon, 1 Nov 2021 23:03:55 +0000
Message-ID: <MN2PR11MB422462EF667A42A541F8F394828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73e4ef04-d824-4f80-ac1c-08d99d8be1a3
x-ms-traffictypediagnostic: BL0PR11MB3315:
x-microsoft-antispam-prvs: <BL0PR11MB3315B0AB0C06B7A30E1371BA828A9@BL0PR11MB3315.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /LPFKITvRVN570nF0zmIdVE+0WFscBHJVM/huOf1eex94iSjMWDB/o5ruwoEhcWUhJVgHH8XP8mizUJDocGsHgG+iFS4hztsXYwx/aOqat+rCiXRvP5V2xqYrhRD2b5tkG/bVs3olpFw90KrszmQffCt2NY+QSXsHcVq5eu5HoNC6vqvM8Z8K/24BjEoLBQ/GkBA1ENtWtDxM55AN7I5iM2SkJsoawgy+O8imtftXdrsaro9XQRICvSrKo1ZLuBvQGy7rX/NI+JXDi8FZDw3NXphtPkA3SYeCupxNSTv+SdtxFOK3pNF2oWa/3gLQPCxWQfCDgy9YUet8MyFmJSyTrfpwgApVgv4WwcQNo15kd9lb+24PCJcSvJG/UV/iQTgQr9tjSAtgwfQcNbGi/mPfwgByTro682FxzaKPdmGv8xduu8gxvf+9wJ0F7IyYEzYZJIu+P14n2nTJHQxD6ymhlDbhMmqYtByFNcsSbTc5nhk99YgUNK+mLqItq1wGB2Od5t1o802VxgVBAhhrEhlENmlj+BB5KcQxQSYPVg23jdfUoaDD2pT7Q+24pBjQ/xUvf4UNJMzu0PAxh3irWxfr3Kyk2gLYB4j272ZyGLp4NTdRoJs8D5cfOjmPmHlLs4YIlXW9KVLq7UVURsJfjLpVUjBRChD2rO0cldXYmFbU6geK7PgbXM+R2+DPiYFQwcM7BGJIGJa1H9j8RtBGVtCTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4744005)(8676002)(66556008)(66446008)(316002)(38070700005)(76116006)(55016002)(64756008)(83380400001)(186003)(110136005)(66946007)(9686003)(66476007)(8936002)(33656002)(5660300002)(26005)(82960400001)(2906002)(53546011)(6506007)(38100700002)(52536014)(71200400001)(7696005)(122000001)(508600001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HYMeifTdWf0X8rvhEeziqwewXh1TTukHbdCBFkxysODN4Z3K8ILG2XtZ1LPf?=
 =?us-ascii?Q?IB4WoYBXdN+Rz9OlX61xJI/3EsL2MW9BKA3bCQzm/eI0mxS0cJs5eltQEp+m?=
 =?us-ascii?Q?mjoJCLpKS0YEIpe1Dr1MobsvGgkfKei7gJYuIMOVL+RkgIgeUZQfR44oy4g6?=
 =?us-ascii?Q?qOGGTt26WwqxTvDvoATXjZBJYphhlQs8xB1KECPOX/NbKPu6RDFQGedhqgBf?=
 =?us-ascii?Q?GuH6xMF9CY7Okklronp0RknWnS2DdYpTbechTl18G+fT4eJV6ONmlUOaCt3Z?=
 =?us-ascii?Q?ub9ZedqiHZAydSrV2IvUsaygn3LDHePhLROjzfiCx2N0MMBOVhouIKNMS2CX?=
 =?us-ascii?Q?1bpMLt4lXGw0xY0FsRRIFqfff9kGtoIuPAuvTO2bMYZnxhDd6Crj4v8NxqWC?=
 =?us-ascii?Q?thww0ePdoVj7b0HZB4ImFEIUe0G9lk9r3cUNCDhCsXbcl6B/l3w/vVRfMUXv?=
 =?us-ascii?Q?CUSGH96XZ+rubYl0w3C70aS9U47Vtcv54T/RR2qbzeq933q9SE1KAKeW6tnO?=
 =?us-ascii?Q?rKZZNwpuI6ElHojqN/sdECH1WsFRvfKw6LdVV8Q83AOnOKx+XYPLciDmTCav?=
 =?us-ascii?Q?BKzZOSNYwHeg+sK0INHa0fqJED2IlgVwnD5Lm6BHDqRaipdPmU9p1ZGKrdGc?=
 =?us-ascii?Q?Uz/2YASVu1Ndq45/KDkUGxYP7NaLsFcvZq41Zf0+9nn0FP4A3Xu8NibizDcm?=
 =?us-ascii?Q?ghKmGE1Rl4f3G2/mGhs+g0EifZx8Z3bkqXTXpgxe7eGP0DstaOd2BJgprf9N?=
 =?us-ascii?Q?9IFItWD2wMQCpt68qFhmJVr27kE+uCli3lY1Toy9CN+JlF/Gn4ELLPFYIWi/?=
 =?us-ascii?Q?qf6qf2e91zKvXmYb2ffoWVF013oAd0WegNJukXHR/uttB8LYmVydEmkXlYNQ?=
 =?us-ascii?Q?trXQByG/6WUwImR4kQZp/txFSKbUaE2L5TeSB9fXUBvi85XMSl2MExiuOq9F?=
 =?us-ascii?Q?XAtDAh6rLNZe1ejTZvl/nMFIX0Xa3fQpHX5mnjnKjFdk35Fl2D6n0lrnVQcI?=
 =?us-ascii?Q?5LZdVUzQAxGFsC36gtog+YxlD7077/sWoqplkedWfQCRixsy1EM9sLH9Y7g4?=
 =?us-ascii?Q?guTrFfqD5BYRMoSSHTcaTSMcSP/1F+vfZcu3XJqNJyBIEnJtNlDuL1lakLuU?=
 =?us-ascii?Q?DmNDMR9tl+JQPrhLjyml/fi7CDh9xoJskfrApof2IV9ZJamxiEAEeDqYTunV?=
 =?us-ascii?Q?TCQx1uzrcIkeFnxt5AtuyV5l+OnQ5ud06YmIZM/oVUzaBw+3ixP09aNjC8i8?=
 =?us-ascii?Q?KAEPLGEztZ9TJ5VR2NZr168g6Nsr2YmC7t+pBlVuUvng7VBzmbPtk3S1nYrn?=
 =?us-ascii?Q?pRF/5sVAnZRMRZ3snKOwWl/F7EJwdg9/UWKnzlRvWbYGbARQUMtio3pVi7++?=
 =?us-ascii?Q?YaaXNpTiWKFcsfjRTStVb1x3D7yhu4bklQDgY4Mgl4eB0qgT7TXVJjdadB9r?=
 =?us-ascii?Q?mfJWJeyl9zTJ1fF5Fm1OxK9eURUgkTtZQNil7Z0bh3b4x5KhsVEkZtzvkgiS?=
 =?us-ascii?Q?rbrAnHT67OVYZ7vL4qFGwoPiJOfnn/PrNPIq2q2jHCSIJ5Sg5Y4Bbcy8y4w7?=
 =?us-ascii?Q?HxF/q2Lq2Xjy/d/YNogYT61zbKTtSoytoaj1ZnHp/KohPB6dsx/kYRsE+bSo?=
 =?us-ascii?Q?Unjkx2/nHoLyVc5Z6X3bcMPHh2r7QYlm0CgufQyYFySDujbd10RlLHDpXciU?=
 =?us-ascii?Q?m0+5Tw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73e4ef04-d824-4f80-ac1c-08d99d8be1a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:03:55.9441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wlRlX4gW04TZjmMXTfThg9A/hhta/s2H3YuICJLwWTTU/sTQJBffCTcdRHj8Y/gA7F/kD2wr76lvPfBsLZmJ6BRIc8822JgFPTUI0vzMP4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3315
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 3/8] iavf: don't clear a lock we
 don't hold
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
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 3/8] iavf: don't clear a lock we don't
> hold
> 
> From: Nicholas Nunley <nicholas.d.nunley@intel.com>
> 
> In iavf_configure_clsflower() the function will bail out if it is unable to obtain
> the crit_section lock in a reasonable time. However, it will clear the lock when
> exiting, so fix this.
> 
> Fixes: 640a8af5841f ("i40evf: Reorder configure_clsflower to avoid deadlock
> on error")
> Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
