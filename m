Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651917321C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 23:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B166D41988;
	Thu, 15 Jun 2023 21:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B166D41988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686864929;
	bh=44OrxpOmPkeh8I1AjYFAcKdmXh6SxONgB2Brz9CAnTM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ozQyzBijSf723/5aQWa2ZB7ewizhH0V9Crkw6NFePhyMpPI6GVrpbb1Owh9kYtd6x
	 n8ePRBnT+egkgSgUwaKjAZ+JtHTRfxjbWSeeCulkvaZXv0R7H5oCyZndqtHHqIDhSx
	 fOQMHDCs1jWWgVVj+4Nvvsjrv11oVv4cAX7J4cpcc8huT7hkY7H7vhu8B1PAtqF8Bu
	 hdu6VuUVUm3ha9+X8umAYIqqiOTerZKHXqK3NT2Fp6bgWQDXnNmmUMN3pkYA2a4aPd
	 3jVjMxf1PNUBCzcPnn3XWnMuGIGKWqpALlYqwXBCJLjIDKAYwAtymiBKtNNDRnHalC
	 HJlpko++kYpsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgGcBI8PmgnR; Thu, 15 Jun 2023 21:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C17340B13;
	Thu, 15 Jun 2023 21:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C17340B13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4213E1BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 21:35:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2590A40B13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 21:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2590A40B13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1-51NU-PFAr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 21:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1429400CF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1429400CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 21:35:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="387643615"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="387643615"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="777896350"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="777896350"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2023 14:35:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:35:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:35:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:35:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:35:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRZljQzPzO4lQhAgRdRE5KDipEGi7ggvm8mkdXwMheVOmvibHmCT4xwIe6MLXHps6VMs1tO6vRdexkqFsnXWjTlEXBDDJGOpxcSJL+OikNhvhw8m4sdQ4UX8mnDabctrbeHt3zWaqT4Gt4JpuocKPgo/XA5m7Jjb1AMr52//pGPRTPvS+EolcNq49dIwcBSaoxQgw+7PnRpZRE1lkawXWh1Ccbjbr+p8rXSK6LFAk5KocdZkA9YoVgxwBAkOwqrhqp6CREOs/bVTmReo+SD/ddQofm6KYOICSi83JUOC9G6RaFidvm5y5ijukb8Er8ifXPw4pfnT5rw/NN329WfYQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vztlr3wsSgrmNakUd7UgKECfC1Z/4wbf1j+KjKOWIMo=;
 b=ic+qJ+tE4pTcPvd3fj8w92wssVvnwpFAFfsklmwPEK+YX5n2aTE2jCp3pjg27kpZuyUBazduP4hVwLnqL3M1a6yKWCrywVoUPtaxN40DZ6eboX3Ms/TCynnmOTo3DpeNMkec8JPLUAMKwTJnnZfTCBukLPimpS6QsUNNmbYWhRZ0ldIKcotO9vMOK1a6NDCFExx3F6BhX5Tjy04bA2waJ16qJT0MmUX493lMUEkP5vcKRPdrVs/wpnzwM47vEW1sFRh6n+Rq1/giaqf7PdYdCWsp9533dQNP+c3A0aAOLz3Uqgh1ebuyX1SnUBXalCk0b2eGW1BETCen6VnqYnkQuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BL1PR11MB5414.namprd11.prod.outlook.com (2603:10b6:208:31e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 21:35:09 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 21:35:08 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v8 07/10] ice: add admin commands to access cgu
 configuration
Thread-Index: AQHZms0P/wrvusf1802RxCsMWYxb1q+DungAgAixyxA=
Date: Thu, 15 Jun 2023 21:35:08 +0000
Message-ID: <DM6PR11MB46576DF96B9A44AB42241E469B5BA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-8-arkadiusz.kubalewski@intel.com>
 <ZIQ4YCX+1FbZHpRQ@nanopsycho>
In-Reply-To: <ZIQ4YCX+1FbZHpRQ@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|BL1PR11MB5414:EE_
x-ms-office365-filtering-correlation-id: 97c5ab15-1404-422c-a401-08db6de8646e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qci6k0fFZvhFkMgg2PBdi14A7ggtX9L8g1YQVpWxO44EMHcn9hC0K3nHUc6Ge2Hl5io57fplcgJLZmptER+FqoS5uSFsMTpDUFJB04qgKXYfxXZ+RhflelAO+VlZqMO3N0XWsjxeZh8aQmZXPD45flbEqhjPY1Ezr1ozN+6RMD1NOIpXp0mYcjINUqD8IEXEaGUCOz4Xh9XPyO9DM/ijtfVMEhJ2x1JnKHRw34JQBD3gl2riqlsYI8dbtuhuUtCuEyZq5s55bbnhp4ui5n3u/CogyL9GBfvVhasYR1T/1A5JYUxgS2rvUfwlGLcL7//1Vrii6VItr6O4ugQf3UZvKRNxv7Zqp97E7cmnsvfXi0WvPOfG5UTnDT0f/oYse3T5qPGOJXhhjpSgE6cFxrvH+Xye7+8WLulxPCEdeNhT6MnEOJTEA/8UsaG2j2cdL1AV8IaavjOgWcUCTRaZW0AzShruthPqYMi5Wpd9YQc4hCdZVxsYwUE2tTaZE+UkK/S/DDzZB9Cej4iAY1cfympKRdMqSXu9/iAx8gwPwDPTh9xG6sr0HqRgubh3yJJl+LZ8+68YG09IrkKa6Rg8bvWhdgA4IjraM2wJO3Mb4AxwHV5IhabMoGQoq1+PL5f+p81F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(346002)(136003)(366004)(451199021)(33656002)(86362001)(38100700002)(122000001)(478600001)(38070700005)(7696005)(41300700001)(8676002)(8936002)(82960400001)(4326008)(54906003)(316002)(52536014)(5660300002)(7406005)(7416002)(6506007)(186003)(9686003)(26005)(2906002)(55016003)(66476007)(64756008)(76116006)(66946007)(71200400001)(66446008)(66556008)(6916009)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Aad2QGW7o5f7loFsfXGsa8abQT8BD3P887vZXdGQski88954nPCjS2cyIXr/?=
 =?us-ascii?Q?8s5bjmPHSP0tRMXWo8F4hk/GIixYVMCzoVU0AQ4D6bWuO9zrLyw4tXUf70WT?=
 =?us-ascii?Q?0JxNO5UAw3WG7OHZ0dMCo1m89l3S93gWNLxKQz5x1JDauJ0NYDzlZgHkBq/7?=
 =?us-ascii?Q?g/xwDvLK3/8QocoWJA7gTkLoespgJINOdZOwEB8vfT0uq9MDRGcorYJsnlON?=
 =?us-ascii?Q?9dr031Lx87qgI8CY42dXbxPde9ucjlsF8HS1U7mbFCzVPlIDAg3DcntqEgHp?=
 =?us-ascii?Q?WoYxwZhj24CJp/oXCiTaFr4Wq3dsNk33sUAftJ+rRdHRU4H7j8+aUL/FZzfc?=
 =?us-ascii?Q?QX13ag4y+PWEUNjmKrjvqS6B8e2/FqjibIw1I96bT1zoyr0b/W+fiGgmPnVv?=
 =?us-ascii?Q?PTDQ8GcAWljjmSphNqsa3gG7bfLmCXcPmlY6PoohtJ5r4mAUydtWg8hznDMw?=
 =?us-ascii?Q?BPQKx8qrIC4i7iLDtcUVxKYD3PjKMlFNAMqX2OpeM9S4UNxYJKjHyV0SdgC9?=
 =?us-ascii?Q?/79DpP/7PMVHEERH9NjGMArGBiV/f8VT2Q+1tASOrrDCWWDIwD0S5Zag76Sq?=
 =?us-ascii?Q?9y87q+z5ceJEwDREI/K/VNaHx8NRK+38Y/3Jyk/MaPfmcp80G5IVJ2mGpp/5?=
 =?us-ascii?Q?xJHFSBIUBfqoN3xgsWG7yqXE59J0THSknRgCfu+HxaYQ6KKR/YtzrSVOpPR1?=
 =?us-ascii?Q?27NUyxSXR3ZetIqMR92PxiKu4Afd94N/INRN+v0v4sXwg99kMiq/b42Y11K4?=
 =?us-ascii?Q?tbuuA7r7jxXtJv8LZSkEjzNIKNqJDIDtH2ubC4IJZrWC439V61E0qpzWggh3?=
 =?us-ascii?Q?CbHhBfYv+x/zQXF8kJmYABhwWySlyP0bJUYKlVYVu9lhcOaW+R21stqdNG5P?=
 =?us-ascii?Q?RVn1Redw/BUr87bPMdqg2wTXEkQVfIMEN7F7mowYTVKsQ5sSQxPqvU/rjGsO?=
 =?us-ascii?Q?NC/vDe5XHwU9UlCa+HKeF2IfD/KfAJoQ6ZLzTYdre/y4ag/w0S+wWAYuf4Uf?=
 =?us-ascii?Q?YbNK8x9bGDDKAjRsQeooHHX5OGgK9DMbwcSEcu9OyQLYotHwPRQwGjICjlEi?=
 =?us-ascii?Q?pvNlav5s0xt/9JWQQ8to/BwzcJ/6Fz8Uoe7WWveVysAyeNrjv6Z8kqH6NNEM?=
 =?us-ascii?Q?nz/ytICI4haMNeKVc6fiU/6287gPOOZhtsypR6yIFL2AjZgZCbEgupa17hst?=
 =?us-ascii?Q?Do8t/YKL4XRJ+OSHoD31SnpVNaFaPGUVDPiiv5QkcBOKwRcMKAP63XGmAykI?=
 =?us-ascii?Q?9SAAPKSOhAkXHlzLCqLA+UaOLdTLZQY1kfK5yHlk4Jj8qotKbaSgI+TUJ5QN?=
 =?us-ascii?Q?pxXfIf8KldpZycmIkIbCiJPRYZS8gClHueLPI8rjEHGWXuBFx4xQTvXEdSi7?=
 =?us-ascii?Q?XnWbOIlGuOZCuAMcmAhZhkAjHMyXaxJRr2TDqBAAcm+FbliXWZLSgbvAa4e4?=
 =?us-ascii?Q?89Wxs3Ak5KlFYVY7h+UalJ1NsDgsNauVcAHDIo0lg+FqCBk/DVJDDncMmjBa?=
 =?us-ascii?Q?fYFv6ndFrW2vMMjJxxmqrWNpyyMBcU/7ZQZTRzGnf6/PEMSor3bdcauv+oSy?=
 =?us-ascii?Q?r6g60qvjU9Fw/4pA926jyjU3gUnxCOXRqinqVrEw0VOzvMob1T3QNOPqKIkP?=
 =?us-ascii?Q?tQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97c5ab15-1404-422c-a401-08db6de8646e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:35:08.7285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6FCUBWnVONXXw71dSj5EKjbalcIH+BubQ1nrBBRjxVzKII/qJobKlKC5n2jx9UUhwlbiLaDqC0cPOZRP5IGZfP+BLvNYMRdh0wajsvnwGjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5414
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686864923; x=1718400923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LDMdqsbQSAUOmCUx9X7g1GGjQhoGNB9t5ceN5k3cPJk=;
 b=YFcrbONzFHLsZBmuM2I2BVDJ3IIIOamUJQqdj2/XqnI7cGxsX9kOvRU2
 gK5VmUsliOAVC2nB/M9SXhWXyVxgTi9ai08obhsAgzDwqZdzdXVSJ0imd
 dP+cl8Ao3QUF3iuW6+oMCBTG4NY3Kxgq+orNqfOx2f8eMBn0wXzl5EAP1
 OWQP7f3PBGbJnIaRjKJ66IpLGGKywRvn6YnL6rpb3+nx7TOfRQA6jmx04
 MQRyK901jP7cK7XN4/fTBraKEEB+6j8ao3EZ8y3RCqm13Nfea2824ZAGR
 ahRDdY6CK7BgGc/0rd0wT3o4fBHtjSiHNKpPSXbud8vorhIiJg3txeB0b
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YFcrbONz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 07/10] ice: add admin commands
 to access cgu configuration
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Saturday, June 10, 2023 10:46 AM
>
>Fri, Jun 09, 2023 at 02:18:50PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>Add firmware admin command to access clock generation unit
>>configuration, it is required to enable Extended PTP and SyncE features
>>in the driver.
>
>Empty line here perhaps?
>

Sure, will do.

>
>>Add definitions of possible hardware variations of input and output pins
>>related to clock generation unit and functions to access the data.
>>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>
>I just skimmed over this, not really give it much of a time. Couple of
>nits:
>
>
>>+
>>+#define MAX_NETLIST_SIZE	10
>
>Prefix perhaps?
>

Fixed.

>[...]
>
>
>>+/**
>>+ * convert_s48_to_s64 - convert 48 bit value to 64 bit value
>>+ * @signed_48: signed 64 bit variable storing signed 48 bit value
>>+ *
>>+ * Convert signed 48 bit value to its 64 bit representation.
>>+ *
>>+ * Return: signed 64 bit representation of signed 48 bit value.
>>+ */
>>+static inline
>
>Never use "inline" in a c file.
>
>
>>+s64 convert_s48_to_s64(s64 signed_48)
>>+{
>>+	const s64 MASK_SIGN_BITS = GENMASK_ULL(63, 48);
>
>variable with capital letters? Not nice. Define? You have that multiple
>times in the patch.
>
>
>>+	const s64 SIGN_BIT_47 = BIT_ULL(47);
>>+
>>+	return ((signed_48 & SIGN_BIT_47) ? (s64)(MASK_SIGN_BITS | signed_48)
>
>Pointless cast, isn't it?
>
>You don't need () around "signed_48 & SIGN_BIT_47"
>
>
>>+		: signed_48);
>
>Return is not a function. Drop the outer "()"s.
>
>
>The whole fuction can look like:
>static s64 convert_s48_to_s64(s64 signed_48)
>{
>	return signed_48 & BIT_ULL(47) ? signed_48 | GENMASK_ULL(63, 48) :
>					 signed_48;
>}
>
>Nicer?
>

Sure, fixed.

>
>[...]
>
>
>
>>+int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
>>+{
>>+	struct ice_aqc_get_link_topo cmd;
>>+	u8 node_part_number;
>>+	u16 node_handle;
>>+	int status;
>>+	u8 ctx;
>>+
>>+	if (hw->mac_type != ICE_MAC_E810)
>>+		return -ENODEV;
>>+
>>+	if (hw->device_id != ICE_DEV_ID_E810C_QSFP) {
>>+		*idx = C827_0;
>>+		return 0;
>>+	}
>>+
>>+	memset(&cmd, 0, sizeof(cmd));
>>+
>>+	ctx = ICE_AQC_LINK_TOPO_NODE_TYPE_PHY <<
>ICE_AQC_LINK_TOPO_NODE_TYPE_S;
>>+	ctx |= ICE_AQC_LINK_TOPO_NODE_CTX_PORT <<
>>ICE_AQC_LINK_TOPO_NODE_CTX_S;
>>+	cmd.addr.topo_params.node_type_ctx = ctx;
>>+	cmd.addr.topo_params.index = 0;
>
>You zeroed the struct 4 lines above...
>

Fixed.

Thank you!
Arkadiusz

>
>>+
>>+	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
>>+					 &node_handle);
>>+	if (status || node_part_number != ICE_ACQ_GET_LINK_TOPO_NODE_NR_C827)
>>+		return -ENOENT;
>>+
>>+	if (node_handle == E810C_QSFP_C827_0_HANDLE)
>>+		*idx = C827_0;
>>+	else if (node_handle == E810C_QSFP_C827_1_HANDLE)
>>+		*idx = C827_1;
>>+	else
>>+		return -EIO;
>>+
>>+	return 0;
>>+}
>>+
>
>[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
