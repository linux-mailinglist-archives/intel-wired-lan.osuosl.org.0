Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077AF6A9D4B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 18:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CCB1415D6;
	Fri,  3 Mar 2023 17:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CCB1415D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677864088;
	bh=rygQYfUUQ3RminkHmy5EvIFjFH0J7fFtZLFrdkvw+0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q3cZfmrw817ubCeQGsbNKXxXjbLi4ZoGtBiv50AXEvJW8HgwgiJQu2eKBNDGdGpR6
	 Gqb0rRFqsJqdhUZOsbQzzvSBZMgXWQ3GbYilAL0VJ9zMdw4lzJ6eWyDpRRbBnCilRt
	 9QLZ/EqQLurypplLt5sVzxWCpAW7Ub01/uqKI9so5pnbk8iJiVXNLBlkLgn3yrJpll
	 MP5T174oLTGGVdR+pJuKISwqDwsycXyUM+X4z72oesSYmcv5Xev7WZrzSBM6UG5p5z
	 7CJpfp3cbGUxOjIaCq1fj16ph5XhnD+J6Cqpq/mvuXMDwi59/+ASPBR/j6ajKn75fr
	 PelzofXfBo7Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4SBsP1b1Sg4l; Fri,  3 Mar 2023 17:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E0EC403FB;
	Fri,  3 Mar 2023 17:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E0EC403FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D58141BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB72141CF0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:21:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB72141CF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ex5iAxf9YI1C for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 17:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3844C41477
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3844C41477
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 17:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="318923127"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; d="scan'208";a="318923127"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 09:21:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="707914731"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400"; d="scan'208";a="707914731"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 03 Mar 2023 09:21:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 09:21:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 09:21:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 09:21:03 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 09:21:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xk1ZfyfaiJa+ZdnzGi36i51Z6JGJVpbQXhegv+CzG9dHLVmtQTVQoe+B5hOPSHqPb9ZbSlbKQwombsRpC/Fy/nBdqqKwIVK8cXmV8Z4glZxJCOYlbWgGNe+LLmmeaq1swpCfK0QzCsfnmOuMWS0XQNazPR/KOOnUtgJFsbw+AeCH6vlGZixfBIjr3g+1SPcPdtyLaHeGFx10a91U7RdSt7UnCJnu062m7RQbN+F89V7ebCb3cK1lyTqOx6p6A4FmAiC6zfcuNv7TGKepoSDWf+dNtIGgmSlBRr2g6hfrB252B47YJOTnKTJLY7dKJY6lAoxDUKUvIJ5SAPsstjtE6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=05LCVTePvJSZKTyXsfp0pPTmdFwv4B7eFjGK/1LEtDA=;
 b=EwkIBwJpqisWjBhylQd3yYKsJRqat2cPzcXG5INB053AcW19hdYbq02TAoKN4HNikPCCh1LzXG2kPn+Gr2/cJbbexSD8RjmS5qqdzK2yuHvBcShbeaF/l8EVHRKbsg7TtWiI5UFEcw4zMjsyV3CN8o6uXjjBI/zTrxL+xwK6msTDlCRYKgdsP+3eY1yO1eA/zqOC9EOreIfzTlBbHQaHZHpd0QN36OarG+8tjtcBEMpwb/jn8U+2ImJn2237VPQMFtQG7TGQ7tXMJ3fKfYaM7WvWPZVKOz94MTeM7tSDfmUhYubAMEA/MlLcN9cukAlzili3pUo1+tskY+CVJFac7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Fri, 3 Mar
 2023 17:21:01 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::6b67:1c73:161e:9444%7]) with mapi id 15.20.6156.018; Fri, 3 Mar 2023
 17:21:01 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next v6 2/8] i40e: change Rx
 buffer size for legacy-rx to support XDP multi-buffer
Thread-Index: AQHZQwn39o6T7U5R2ki08PxlP8JMtq7pYrRg
Date: Fri, 3 Mar 2023 17:21:01 +0000
Message-ID: <MN2PR11MB40455DB71AE07BAD9BCEF9CAEAB39@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20230217191515.166819-1-tirthendu.sarkar@intel.com>
 <20230217191515.166819-3-tirthendu.sarkar@intel.com>
In-Reply-To: <20230217191515.166819-3-tirthendu.sarkar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|CY8PR11MB7798:EE_
x-ms-office365-filtering-correlation-id: 4d0118e4-5618-4a24-4241-08db1c0ba96b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6EpLWp4Y8o0I1I83Z6hPQsVTFEa9MltrhbHc2yQ6NoLmiGNWCEVsj51e8YHFU98pkLPVGs8fGeWsSLSfFKNTvGegMiUHh6COBqaOLI1Goi8Knd5x8OnAtvlELpot+gXtt5psa8kqd5EnhJboDB05Dd4jjlHHkaQoBFR4mD/zdrJQdCOU8MxgBy2nN6AxEmYM+AwLf550xxKEuX13mke/dKmzMuFP/E9RuGjmcKAtnSACHsYgCYpPcWVd3ky6wtMR3e/LVfhG6EekbRgtPVZOa83kpfS22vYpBwjimK0U4feP+Ekr+gWOusmJUA1OowUB11ZPaIbw+AsZFrB1Cgkb6ho4h7v57CNMTrTG0ucSvlPIVKgOs3SUgKvjW7quNzB7zbiW6SBgAdtQfei9mSVa8qWZhSVbdR+u19JTiuYsZ6dEJGUAMZRK3gVjmgwHI4+s0vUDnI2n7/voJ/mmX6nRaCTz5LxoN4GLRcxrToKx/4KVSiRsWWQBFZAWYESPyUtke7a8JtdQr6CBmK8XTOa2PoQ7aQcv0Q6lzBIOcJmTVD3UD2kq9PGR8UjbVPUR+rMqe/Rwn7RlRh1LH9GNZmg44b0jvMlm9O6pw4+azjFHYmdNDVWiHtdGGJh1t2pkRqtlQuz8T7zSuIJgEToIQFYdmPx2dzurU8r3ABrPSL4DOKLVlY4SK3HSV4FL9LLXAi79whk7Dzz8Tc+G1Dw8WtpoBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199018)(316002)(83380400001)(33656002)(6506007)(478600001)(54906003)(82960400001)(55236004)(38070700005)(122000001)(71200400001)(41300700001)(186003)(7696005)(26005)(66446008)(9686003)(107886003)(2906002)(8936002)(5660300002)(110136005)(52536014)(38100700002)(4326008)(86362001)(55016003)(66946007)(66476007)(66556008)(8676002)(64756008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yxrxZuuAlWS4fzvygxZgRV2zwP2/N2hgzzXh8ICWRCejD+/FqEp8P/C5ruWB?=
 =?us-ascii?Q?W5EGgshg669NhQVnyqG+dosTN6xYAVWh4MshSkGOH7FfANvvh5UJOuSd1RuZ?=
 =?us-ascii?Q?X5PPjh0qZdhlX/oMhI9pLbu7NkwgiTlKNu7IeZTBcCvDJ1bAlfYmFKhTLb/Y?=
 =?us-ascii?Q?na1tyeSUKScW2uUx16n9912cOG+P8Ot8QCZGhJ5AlsxjtzKQ2DYJ5MH0oTvU?=
 =?us-ascii?Q?uVvKmHZ7jrMX8J1Dw6RaIHHL0bYoohrlwlCtmpEIJ8jR/hzVO7uHUgttijE9?=
 =?us-ascii?Q?Q6uPPwGbG7SBe3RTlDnhVHfVIXjUG0fKCBukYhZKoyoPdN/wvp2sURXdG7or?=
 =?us-ascii?Q?fnlm1vApM/KFpAN93/4cs61ob/qW/pO/AbX2wxgz0EHKcKiJ293eCUhPvmYO?=
 =?us-ascii?Q?grb5LlgeL3AalZ2bUJeoe5in58QWSnI2cATWbCae3YdEQ/esmCP6wW5nHCQP?=
 =?us-ascii?Q?V5gyWyI4yWT2i0nSGg3ZNLSuBv/DtOLS7VkflMXk8jfcAGjkINrDQzB4h+Z1?=
 =?us-ascii?Q?JWI5o1BNX2RkTE5aLFa4+/+FFLHx8gel17aQZ4Vq7S9sbM6SgCBvOimLCFnz?=
 =?us-ascii?Q?ZLYdTKKZAgby9cedahvsktYiER7y2vmN9QhPKLsnhHWJU5V0rPlmNkx19PUZ?=
 =?us-ascii?Q?Qbd9XF36xlbV5cPcEP9KWUnUZIv7uLB6t1+LOWLwSrv/TA9NBrLlB9G/Oxb3?=
 =?us-ascii?Q?K8pLdkXMbk3rOfnFiNJhi7VMnte9CJtExACjUwLjN3grhbFQC2GfhHX2vDUT?=
 =?us-ascii?Q?IEOxEU82X5G3f6kFWnTQt0MiA9Gpx1xEfBR2L0iyibJdri5XZ1iMLco23Uox?=
 =?us-ascii?Q?i9c9Un9u3u6y5QKs7i/8iqiKdwBQJiZA8R1TkHEVSwPI/igoYQHRYBPmENoi?=
 =?us-ascii?Q?n65+mIa/B+CHXsqgbHf5QND4iuBvRTsSWj+eJ7KRpLu2inALBmU8EMBZWv1e?=
 =?us-ascii?Q?HhJN8ngMFr51v1pvreCWdsYrcNF/nkJqBVYzBOWCycEwlv56TILBS1VTHDGv?=
 =?us-ascii?Q?/0xa5FHt3DKcY2jMBk53OwerdoljlQvNssV+IYYBJgll6B85kWUKrtOyVrTp?=
 =?us-ascii?Q?GKZFib+u6pmQnKi8IyoHZ17lsJ6bBP3z0DxEwDuQeFjsSjZC3GviUIaIMcQl?=
 =?us-ascii?Q?x16s7Ktxf9nQvAr+Rz12S3jtaR1UciSstLAR+KfqHGT7i1koBCHkQzxEMEOc?=
 =?us-ascii?Q?itvDtLSieF33KFvyduD41dDowJarskKXOhPiib9+1Vhn+zPFiGSvcIjNa2WM?=
 =?us-ascii?Q?a8Rw/YKScjkUYq0zgGIOUQLliLDDyZCNqIFYsOOtz26+93D5xESN/B+0MVpJ?=
 =?us-ascii?Q?AjUfX+TiX7wJqIwAyhObsbSRU9zkIPSPgcVwMbvYu8akaoqRtYZ2ry9BtFWz?=
 =?us-ascii?Q?dt9kWubunDWgxad7CTYO1uGQwUqbNTMgbzvVE4reWqjVipqiRbFvEe2ZO7PA?=
 =?us-ascii?Q?KdLlL7l9Ue9VAGUystN1kYt7mSxyeu3EeaQ5M+/Ua5to8YLz5sqAZLYV+h+v?=
 =?us-ascii?Q?dCpoZfT/b8ysQPd0HAPhE8Un2JbXLUUJcUvIahcKQ1VBjboecvUZuV/ONZWZ?=
 =?us-ascii?Q?sT8YgvWLIg+/kmmoQ2jeWPWem+pFBvqOtF6e2zdF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0118e4-5618-4a24-4241-08db1c0ba96b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 17:21:01.5341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RI/HL42eoN29A0+U+2k8ep+kHY1lg7qDLT794W3wpeE1uwE7QbeOKICgI5iTFPey+wNtj10iqK5/yW0k6soWRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677864081; x=1709400081;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=05LCVTePvJSZKTyXsfp0pPTmdFwv4B7eFjGK/1LEtDA=;
 b=luVGQarcXz3U2NffiJ0gLWtG8jgaBqliN6dnfCvqBlYpRy/2cbJ3fK8o
 ezpxCu2gSoniSnh710j0Vjgkcfy0OQaRx1b4KNqoGbFbpkEbMd0LRFoT/
 gtswY3/B1RMX9878viUxwkrnt0Orjj12xU/1kOT8DIJgRwHWejA8SuiVh
 QbuF8FD7lAKhivGob1ABTRZO39a77TlsRlkqmlbBt7FbVPSd77mZdXC0i
 DXyxKbtgu0+zsq8ARRc6A9ARrv8mSAtV0xOWCbYXn86EEZujY3zUBOwNF
 yvKw2vhLlKvaiDDwyFkmz2haWmWPPVt8VlSyPd7oY4Ft1udVt1G4W3UG8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=luVGQarc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v6 2/8] i40e: change Rx
 buffer size for legacy-rx to support XDP multi-buffer
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Sarkar, Tirthendu
>Sent: 18 February 2023 00:45
>To: intel-wired-lan@lists.osuosl.org
>Cc: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>; netdev@vger.kernel.org;
>Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; bpf@vger.kernel.org; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH intel-next v6 2/8] i40e: change Rx buffer size
>for legacy-rx to support XDP multi-buffer
>
>Adding support for XDP multi-buffer entails adding information of all the
>fragments of the packet in the xdp_buff. This approach implies that
>underlying buffer has to provide tailroom for skb_shared_info.
>
>In the legacy-rx mode, driver can only configure upto 2k sized Rx buffers and
>with the current configuration of 2k sized Rx buffers there is no way to do
>tailroom reservation for skb_shared_info. Hence size of Rx buffers is now
>lowered to 1664 (2k - sizeof(skb_shared_info)). Also, driver can only chain
>upto 5 Rx buffers and this means max MTU supported for legacy-rx is now
>8320.
>
>Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>drivers/net/ethernet/intel/i40e/i40e_txrx.h | 1 +
> 2 files changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
