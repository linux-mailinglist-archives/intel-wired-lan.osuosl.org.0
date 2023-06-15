Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C0731663
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 13:22:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44B8340585;
	Thu, 15 Jun 2023 11:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44B8340585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686828150;
	bh=sr/tosarXy/K+IYlnH9NPcoL8xEJJhcjPfpKb5J6J8g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VPap74nm9XjJVRJ6lUpv3mtCIyw99liIskHQDRxMgxh3Sq2WuE6XqYhrmGSPnPQ1A
	 QK/Q0iQesRB4b5RWN3w/D4EtZckJSehWCbDYSD5yNMNYaFloA03f831XoN0uVHSAPV
	 paWwgS4UL9NxAMcOsEQf372a4GeiUlWUP/WPU+DqwRHQzbMETPQLB7fcTHJIZn5vbP
	 GxuOU5g8PSJNIaG6O4dtu1Ul0HXQqcZA1vJhCXMVj1ec/KLMkMvPQ3YwTLsBlItIik
	 gqVFISK53Usr3K+BZaWCBi6CZYmzB4obX9r2KVxHw6OaJpGDB6olox1OzoN+k4+PjE
	 N86BRPKU3LJ+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2M_H7qkJbtty; Thu, 15 Jun 2023 11:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C41640549;
	Thu, 15 Jun 2023 11:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C41640549
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7381BF276
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 11:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D21B540585
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 11:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D21B540585
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_5-THObA4zm for <intel-wired-lan@osuosl.org>;
 Thu, 15 Jun 2023 11:22:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98C6B403AA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98C6B403AA
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 11:22:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="362265755"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="362265755"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 04:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="959161114"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="959161114"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 04:22:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 04:22:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 04:22:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 04:22:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 04:22:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqxdJw2icf6SeGH6RNY8rbrgnPqcDbMqcVg237Ar6CdFIy4NCq7oCurxON4Jk7u4SjEC6MCchciLRc50b4tp5gixeDHb9qMi/mVqpTc/Mspj/n41wWOjgfYduhuqfG2AvT1taL0HJar3aRT3Xb6Cui+dpXOnluhtQgJHyY1kIHVH3AbDmlqSHxTf29aMV3vh4zcd+R/qqHHwADXKGdjqPOf3yIm7fopNo49fy1pMrStQQLkSh6TrTu+ynY3p4IuqEAd963nyIvExqySlKAmb16bDw+QMua+5UOyBDu3o/Bt0qGKmWa4oUALhYVNZsCjtkv6hpymJjstSmDC+MkvI/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fy55Px8sfWib0Csv4Lfk87n4mdoqB53pvblzigc7rLM=;
 b=TE0Eq0HJPPf+BqDnrAZrM5JuWbZDnyzreSILTzlqNTf4X6JnWVazd0yf+DPSl3VCgBaB7+p9H3o1XiKy2xStFZM5/stTkvToYa86RPGiDNp0h7rrGSJgGxOp2IV7pnjIp/QYGT8Ao1hWLndah7A8bMBxSiVUjjEYrQAaxUQGDroAhLHeAdZEGCAiJAltWKnzQO+8y5+pVjSXQjPJuII/CwQb4+3cDlpWkSJdvpoxCEvvYjVgeURFQ8lhF0YYagPe5U9Hph1rD3ramVzGQzEgnNpg+AsD2VL6SrM1pMPD8+CLTkk9EanUa22e5iQqh4I7rirWsOCsX4cazGZi4xZ3Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 11:22:17 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 11:22:16 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v2] igc: Handle PPS start time programming for
 past time values
Thread-Index: AQHZn1L8U2exufwYkUagz99jj+0Hiq+LuIYQ
Date: Thu, 15 Jun 2023 11:22:16 +0000
Message-ID: <SJ1PR11MB6180CD78F25B6D15EC7CEB3CB85BA@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230615063043.48250-1-aravindhan.gunasekaran@intel.com>
In-Reply-To: <20230615063043.48250-1-aravindhan.gunasekaran@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BN9PR11MB5354:EE_
x-ms-office365-filtering-correlation-id: 4c3c579b-d692-4dfc-c263-08db6d92c6ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cQhvzXZjJTZSRDBnHS8ct6o6l4EBbZiN0pMiarZwGln4HBAR8RdXNomIU+T8rvg+rpbOuLZOUE2dsl2Qa1ZgN57pjEuyIGa6hjdHR8Uw5fPeBhHHsfWL0Evp4ZF5aBWUgkhXXGHLLb879ssPxWVrhsn2CC/R1d/V9IvyxuxQtdBV/7J1chlFNSN/ClrOwDncwc10uFU9Y/MqDyL+64ihiF+oALCP7m1CzXzQrM/9ucxALPDsf/PoamYSIPV4zTO+kB7UHggiTkwPijV0Clc4ysUZzMQDrqjIycFDkh72gaPMyB6K4wVAE0249GfeuiNmatHEJddR8wV329bnNHZDHuwOaNlZkj4/5C0k27IBj4ToMcgjzOQn9Ulg4ewjGjBpHVybNOfS/X1U6iUD3qt3/s0MAvPdZ5q1cMMRXoOSMNV44d9ORmmMGpYXH6pNS8uAKGQS5BWTV2pkBlCehpZ4pL7rHd8oCC+Wt4x7FUbD6S3rGWK8D/y3aognEE/A9vTMT1sHQeeet0fu35noAYDsOQXfiDWD4ET4gdcgTvGGABA8dfbcIwIZKhFaQzMOIIXS2NtC56qiyYFfl8IeBZQSpq6ezqQKV8X9/2XdCvIUs/kNtIUB5NYSKsktw/vCm/+n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(376002)(136003)(396003)(346002)(451199021)(2906002)(9686003)(26005)(186003)(83380400001)(55016003)(66946007)(76116006)(66476007)(64756008)(66446008)(66556008)(71200400001)(82960400001)(4326008)(41300700001)(7696005)(8936002)(8676002)(316002)(110136005)(54906003)(86362001)(33656002)(38100700002)(478600001)(122000001)(38070700005)(53546011)(6506007)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qPtseOQ+c2GcmDln50sFC1inMsQuUBME3VMRPvt18k8nSzke8xDcYVhwv6WW?=
 =?us-ascii?Q?Q1adHHtwb9pQgrRgjjHgp6mxBLc9sTEX2xjHa0hFbFJBAFcuVcfESQIG5YbE?=
 =?us-ascii?Q?xEm2S4GTZ4w2OHkhDqhThnIq5m7HM3+08yQwv8MbzReqvK/uo2xyM63KIN+n?=
 =?us-ascii?Q?HDAaKFdMaDvUdMG9RUI4aY2sFNoBBPQOnW0RsE5UZDAbY8WA2+jAr2+pqUEl?=
 =?us-ascii?Q?r0H5jTFfNmClSM9Vl2BUAN9h8E9L1Xi3AoAEHW/o6nFqMkkz6N0lfRreRjwA?=
 =?us-ascii?Q?nlfsLmt8gvaK/v6EAKjlv4KfAzFBAuzNoOJoBOcsXWuJe2p2csL7l/CFsG5d?=
 =?us-ascii?Q?wGLSO61y33CMJzV77nTYBqckkVJ6J+xe4xqwFMiR77rlSHc4gRlKgHiHN6r9?=
 =?us-ascii?Q?bwwQkz8SzpLdJR3mSsJ+kjRTF89jF1DqeWuh2Sjjec7C203Sd930WNrO5+zf?=
 =?us-ascii?Q?uR94CzUzFrBtEDmCFcg3hyXyaV+dg/quSYJtLqZ24jHSPSUnhi4VTtExA75u?=
 =?us-ascii?Q?4KHOmg3nPaYN/JpxywI3z4dh/fllXaqZUBOHQMhKhr+lkpIY90suHSN78qYI?=
 =?us-ascii?Q?FRQJcxEbj89s6QeGgmMt4BhA3gM/ISNCUAEXNMBuu+tz5DPemNSLFUFdrss1?=
 =?us-ascii?Q?ipDCo4uD+4Mxmuz+Fa6JOw2cCGXttxxA8RoObz7lfnTn34WWxnIHmI3obHCz?=
 =?us-ascii?Q?LLzuddyXC/G9DclqN8BY5+YFs5m1+zhR5BrQ/q1sMXXgnkuMVKVj5maImXdh?=
 =?us-ascii?Q?2LneFcTr6IbHrHdj2Xi7VMsEiIEx/GL67b2k8vgq3gXqu1eH+r3TPIIOH8vs?=
 =?us-ascii?Q?KQLLOg0rBN51/BX6H8llveYh7uIFEZw0lyL8+J1Ib9S54Bx90i9alsA3ygLN?=
 =?us-ascii?Q?jihYG3aHqT9bJR5PvWFhO7JnNLa65xU1wcirmSZR4TdegJ+RWBDgYbtqCqEb?=
 =?us-ascii?Q?H5pG+hy3y+OYQiEPHChlSc7TZsYWswv7CbHZqVD+YwWjNcXdUCdS9OJZz3Au?=
 =?us-ascii?Q?UdmeoULeEkpfL5CpOdY4CMhDY6BughMCjAB246xr2/AR4kzR4QtMYOCJwXlF?=
 =?us-ascii?Q?0sbVmt95icws+/F3le6tg9OHOV6XCl7RC4vFi4krxy+4ymOrYR8ip2ILFqRu?=
 =?us-ascii?Q?uepIx10xPlJOcd/fTuFWawQYFfHfpdG6XOWwfsoOZ29bb4AUQcG5gT0oowHa?=
 =?us-ascii?Q?QVr2/LKFCRVbLqka71AWymghy9ljnmkNa95c+nni17KVplaeramWYVKfbGsG?=
 =?us-ascii?Q?rGVEdrK7EZeiHOp+8ks3POv9XrxF9Bhc5d5NEP76aV+Nv+VooaUXRSi7XVcQ?=
 =?us-ascii?Q?60SiKpBTRbaOEzmyGqQjqaMIq8pSEYwckxQ8YD0JVMof8AJvM0gLqeNH8To6?=
 =?us-ascii?Q?5UvJzXXEZDdw+NrAPV6dMsLeC8fZCVjcJxmy55B//c8BVKgHRE/7tg/lfgRE?=
 =?us-ascii?Q?67ltHmQdswucldLrviT0Ds1NwBr/QrMA+OEHD6XUIJXHYwLjooF2zuZj88f8?=
 =?us-ascii?Q?KQXPbYPaTey7n9v4Ot/it0PbwgFU6dNfUq/rvOrS/bSNUvd2hDGTMpZYdrY0?=
 =?us-ascii?Q?TWZ457QtFGmsO2SSJ2zX1AE/3W6eJmHkbdI6aosYGhTnxk7EoILm4eHJdxIO?=
 =?us-ascii?Q?dDTc15ic2c0G84YZx5HK1ZE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c3c579b-d692-4dfc-c263-08db6d92c6ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 11:22:16.8955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoV6Im/998VxgpIAKdZTihquxViC1uXISR0l76DQzBZd3v6OQlAAqXANbHjzV/b3xFfxdrGooWN+eaRCPDbuM8fTmvuZ79WQBOqz37NI85ppP1/qnewp3luKfMde5+f/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5354
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686828141; x=1718364141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xp/YEWP5RtHrzTvsgAxtWYW47rsJVxiO58/euj9qjKs=;
 b=ZxXnb7ajql9m9KE9kGSV8gvMrrM2YPBwBtVVZwtFgi6uCKVt9fjabSS3
 TxGcihh5nENXcAdGbRxF9IbSdjFTPZcjR8EfJtMqQcMfY8D7qff3nIPos
 +UX+/l39ixUk0jaMYaoeaZDtMqaIADGzUB+F/U3E7WRbrq6Pc3ufJFQ69
 bGg1ohIkDMytbGWiVRFauncQmPuECkdBysLNrandnlvLdoGNqs7JLfSwl
 YPZ5onIqwBZXcMVM1kU6jbHVCXsFpYujdMJO5JW6oeVBkmdILk/LiKAWG
 biPXWXlZ2dal7hUv6HSrSHjKRiE5KP3ZXsZ3QZp23TshoAXH6G6bXk+eZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZxXnb7aj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Handle PPS start time
 programming for past time values
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Gunasekaran, Aravindhan <aravindhan.gunasekaran@intel.com>
> Sent: Thursday, 15 June, 2023 2:31 PM
> To: intel-wired-lan@osuosl.org
> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> Gomes, Vinicius <vinicius.gomes@intel.com>; Neftin, Sasha
> <sasha.neftin@intel.com>; naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Gunasekaran, Aravindhan
> <aravindhan.gunasekaran@intel.com>
> Subject: [PATCH iwl-net v2] igc: Handle PPS start time programming for past
> time values
> 
> From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> 
> I225/6 hardware can be programmed to start PPS output once the time in
> Target Time registers is reached. The time programmed in these registers should
> always be into future.
> Only then PPS output is triggered when SYSTIM register reaches the
> programmed value. There are two modes in i225/6 hardware to program PPS,
> pulse and clock mode.
> 
> There were issues reported where PPS is not generated when start time is in
> past.
> 
> Example 1, "echo 0 0 0 2 0 > /sys/class/ptp/ptp0/period"
> 
> In the current implementation, a value of '0' is programmed into Target time
> registers and PPS output is in pulse mode.
> Eventually an interrupt which is triggered upon SYSTIM register reaching Target
> time is not fired. Thus no PPS output is generated.
> 
> Example 2, "echo 0 0 0 1 0 > /sys/class/ptp/ptp0/period"
> 
> Above case, a value of '0' is programmed into Target time registers and PPS
> output is in clock mode. Here, HW tries to catch-up the current time by
> incrementing Target Time register. This catch-up time seem to vary according to
> programmed PPS period time as per the HW design. In my experiments, the
> delay ranged between few tens of seconds to few minutes. The PPS output is
> only generated after the Target time register reaches current time.
> 
> In my experiments, I also observed PPS stopped working with below test and
> could not recover until module is removed and loaded again.
> 
> 1) echo 0 <future time> 0 1 0 > /sys/class/ptp/ptp1/period
> 2) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 3) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
> 
> After this PPS did not work even if i re-program with proper values. I could only
> get this back working by reloading the driver.
> 
> This patch takes care of calculating and programming appropriate future time
> value into Target Time registers.
> 
> Fixes: 5e91c72e560c ("igc: Fix PPS delta between two synchronized end-
> points")
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> ---
> v2: Added Fixes tag
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 25 +++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 32ef112f8291..f0b979a70655 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -356,16 +356,35 @@ static int igc_ptp_feature_enable_i225(struct
> ptp_clock_info *ptp,
>  			tsim &= ~IGC_TSICR_TT0;
>  		}
>  		if (on) {
> +			struct timespec64 safe_start;
>  			int i = rq->perout.index;
> 
>  			igc_pin_perout(igc, i, pin, use_freq);
> -			igc->perout[i].start.tv_sec = rq->perout.start.sec;
> +			igc_ptp_read(igc, &safe_start);
> +
> +			/* PPS output start time is triggered by Target time(TT)
> +			 * register. Programming any past time value into TT
> +			 * register will cause PPS to never start. Need to make
> +			 * sure we program the TT register a time ahead in
> +			 * future. There isn't a stringent need to fire PPS out
> +			 * right away. Adding +2 seconds should take care of
> +			 * corner cases. Let's say if the SYSTIML is close to
> +			 * wrap up and the timer keeps ticking as we program
> the
> +			 * register, adding +2seconds is safe bet.
> +			 */
> +			safe_start.tv_sec += 2;
> +
> +			if (rq->perout.start.sec < safe_start.tv_sec)
> +				igc->perout[i].start.tv_sec = safe_start.tv_sec;
> +			else
> +				igc->perout[i].start.tv_sec = rq-
> >perout.start.sec;
>  			igc->perout[i].start.tv_nsec = rq->perout.start.nsec;
>  			igc->perout[i].period.tv_sec = ts.tv_sec;
>  			igc->perout[i].period.tv_nsec = ts.tv_nsec;
> -			wr32(trgttimh, rq->perout.start.sec);
> +			wr32(trgttimh, (u32)igc->perout[i].start.tv_sec);
>  			/* For now, always select timer 0 as source. */
> -			wr32(trgttiml, rq->perout.start.nsec |
> IGC_TT_IO_TIMER_SEL_SYSTIM0);
> +			wr32(trgttiml, (u32)(igc->perout[i].start.tv_nsec |
> +					     IGC_TT_IO_TIMER_SEL_SYSTIM0));
>  			if (use_freq)
>  				wr32(freqout, ns);
>  			tsauxc |= tsauxc_mask;
> --
> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
