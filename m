Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6460C47D16E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 13:01:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE8F5812ED;
	Wed, 22 Dec 2021 12:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lVmtFrMMcu5y; Wed, 22 Dec 2021 12:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1DC680F5D;
	Wed, 22 Dec 2021 12:01:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA0DE1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B614480CE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ILJZncTnMyYw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 12:01:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A724D80CB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 12:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640174483; x=1671710483;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R/OqZZxJfpwjagF8q8u5g75gsNSEnM/JbsCg0en7wts=;
 b=WyX9dd1B5bNdIo3EA+QnMOfoQPud5nnAHbi3qDE4L78rkM30YPOHSuFx
 DKb9oV5Ni5l7ldvF8YsdcTHeRHok8ZERpW390t8swR6Ovexx8sryPt/WP
 NIRMMuJgiYM78NpMKll3M2sFYlZ8kw+K+bR3Q7tfpLYvAy/GsbUjTk08Q
 tWY03h8tYtvL5nHF7M9S0HKKlemDVb/ppll7YTnjb82Y9+AQ4uEeOyZaY
 JcsILHnVZW29ryxxNgjEsspN2vUWN4exSFxz8aTdKqstBkdM+loT96FE9
 d/UxXjunQrwuKoa0WD1cWc8rAj6b/TVZdsqyS4nvCW2NjtSsrgfFD8Bc9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227900193"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="227900193"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 04:01:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="570541060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 22 Dec 2021 04:01:08 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 04:01:07 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 04:01:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 22 Dec 2021 04:01:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 22 Dec 2021 04:01:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=URbB/z0aMQECEIrXFW47p1DhQbgJmREYWDVhfDhNpg5T7p1LfLxf9isc7xRDac7QlMdQD2wIe1iAicc32si4IonNIU1cqbFhR7ixGd/lU0Guz3b9yP8REWK38VSEGNIBu28GxXBQXI915sI/775ecNYTAO5fiZ2m0jthNbcO1KieSDZWZHsPiAladSF8HVu1HWVsSluHYPZBKneZiAvNtW+ls/INt0bWmLtuY1WuODvybBprd8fOV/H4kMeycYoeBinnCaoMw3dshO7wXYs/YEQWvdhY46H9ywX9WQZSBJXLQdx9GxrsNvNKkoXwcJS4LUKe2BcvcT0vEbVo8hFIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/OqZZxJfpwjagF8q8u5g75gsNSEnM/JbsCg0en7wts=;
 b=e7qTJEUHLqfKshiaW2bKf1KgB+YgDv4kv5xoq8FAJ8tlkp19giKq3xI10yXNvqMrsKZrxPGrTk261K2kwUJTSrEhbKjTwy/2rIFYdgpoiOyMnR3+xq0QwjBKpa4hyNw25YzYNIcuTSgORh9kCYuZS894nwFK9e0zZVdIUdwt8VM0t/9QkBKozpp2+wq3JmgOORUc1k/4Mu4rczDtPdo12H7jauKJjDAHTIKxlwHYoY9N/8AVmgsu9p2S51njeyCEmR5XZQCBA5axF5VRHZiQCTz2Tnv0sxHORnhc2KOfofM7Y3zBku8qn1UaSmtclBYocP9PeREKbu1pq2jDqcFDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM5PR1101MB2170.namprd11.prod.outlook.com (2603:10b6:4:54::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4801.17; Wed, 22 Dec 2021 12:01:04 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::f8b1:818d:e250:d2aa%6]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 12:01:04 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Lukwinski, Dawid"
 <dawid.lukwinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
Thread-Index: AQHX2uvIWuvQiZX+GECopbDROVlzaaw8w/eAgAHc5rA=
Date: Wed, 22 Dec 2021 12:01:03 +0000
Message-ID: <DM6PR11MB27317207BB69160027B04FEFF07D9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
 <ecdb8ef3-ccce-d17c-86d6-56f7e1e85606@molgen.mpg.de>
In-Reply-To: <ecdb8ef3-ccce-d17c-86d6-56f7e1e85606@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e063061-b1a4-4aa2-fec5-08d9c542bb01
x-ms-traffictypediagnostic: DM5PR1101MB2170:EE_
x-microsoft-antispam-prvs: <DM5PR1101MB2170AF0193F6B9C32B271B6EF07D9@DM5PR1101MB2170.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wfebt4Okxs4N1VKsf1RSmzPRwxTUzgUHgw2/kzp54zBx8hnV/nZ3qBmkjRoUxMlBkLFhujyd3I351rXfUbGL5zoQQuzGkwssVisGVXwaRfNcVgPUT4TukMQ6jwZrNTpR+/9/sv4hJVYxrQAyi4jiNs+EEAMEZqoOfnCbE5BEE6dR21GSbMXxpgZ/OtHb/hCkawPJzG46C7Op+cCxH/CgEpKPsYLYdF5d+gIhRmBmneqmOt4gnklT9robpKFnh4sZXCxKMpy6YCREXeyY5qk9ycmXGKnLdWhAwRZRwOR+B5OhsNQA0yQ4kW4Zdt3g4dDkzBhYqYIuoqdnZBDR3bIdBCqP9GsRhf4W8EgD4AkdsnI6Domzww7zNmAiJFQJEnHluroxp67ljTTXxIJxtwStf5749J3H7TzQDNtuA6kcZhPHHqdkZ+Y8rDv0l/yezVDK5OLdbaMSDAqocua2PtYrf5B2U6XLyYCUgnM0O9m9zSvDL7z1EJGglG8bXPXdlorfIrVt11XaabSuJm3nshSyAC57g3jsQWFCMeM5aV6BvansfSDF6te1hCJRoNwWkuQetXCBDNHQ2YgDTYBj9/dYa7hj6YB2o4nZF8D/O9ey8U0sgdL1bLTWgBZkXoP11lDfGNSVKH7zjxdfcvNJwBC7a3G4G9xze7uiBqFNtYD8yR5xpwwnPHPBwXK+nwshkPJgz3WV58cqLKxZmr0qWed3Tw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(38100700002)(186003)(26005)(122000001)(508600001)(33656002)(316002)(9686003)(4326008)(110136005)(2906002)(5660300002)(6506007)(8936002)(52536014)(6636002)(64756008)(86362001)(7696005)(66946007)(76116006)(66476007)(66556008)(66446008)(8676002)(71200400001)(55016003)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3l2aUNQTUgzeWdqbitRdWkwcGVoVWJMdW5td0g1VzZ0aU84Y1lqRG5Ba1Rt?=
 =?utf-8?B?Uml5U0ZtdllDNEVxS0VZNW5sZUZ0Y0g1Y3NhMzllbzZlUC94anAvRFkwNCsz?=
 =?utf-8?B?WEFWa1dXeEh1M3hKNDFGdU9IR1lhazV0TCtmem1LdzRJSnBsNkhhb2E1RWMx?=
 =?utf-8?B?RS92aFV4bG52cGJzUWM2U1pHMjEwTW05OWZWRTdFZHp4aEwyUG9NTFRNdnNY?=
 =?utf-8?B?dnZvVWhUeFh3ZHlwUFhoUXluNG42cHVuY2NuZVlScURkMGRSUVN5RVdzdHd0?=
 =?utf-8?B?Z3psS0tibEpoN1pQZDJLNEVlK3RSQ2xIU0RkZ0M0czBuaTB5aytscFprRDY4?=
 =?utf-8?B?N0JoUFJVSWxUNjRQTU1adTVPcTczQnh4bEt5U1ZRZ29EZHorMVgyYkVodmNN?=
 =?utf-8?B?NzVmV2hFWDNtWEoxbU1UZExUaHA3dlFsU2paVlNFejBnQmFsUjZuSFhiNGRo?=
 =?utf-8?B?RWZkYUVtOHBHOERVQnBZWGI4dGRINXREMWhvbThZd2wwSnRkSEpUVUt1aGVW?=
 =?utf-8?B?U3Y3NW5PbSs2Q0o4bW5RUFhnd1FGWUFGNXBFODZsekQwZURxcW9iZXQ5elo3?=
 =?utf-8?B?MzFxMXViVlNWdGpvcTNsU3lPUTkxSi82aGpYa1VDQUt1ajZIWjMvckkyaG80?=
 =?utf-8?B?djFYSjR0NS9RZTlvMmhoakxsK1phVmtLYkRyNG1QWllNeG5tZVlqZXY3RHFY?=
 =?utf-8?B?dGxtK0Y4VGZ1RURTcDI1WU5KTEZTSjRKNW14WWJUS1dkMTJLYmlXT2lOUGVJ?=
 =?utf-8?B?NlNxWUMzMlJWZWdCR1ZqVFJ5bmRUVmwrblpKcjZWbjBLQkEzZlhZdi92QVZO?=
 =?utf-8?B?RHhRMitMS3czME52WUVWYmovc1NNVHN2eUJuQk55WjlJa1BUa0RGMlJUakQ2?=
 =?utf-8?B?dE5pdnlyOWpmVjNGTDU5MmNLL1VGTFl4b1lXSkdwbVNvS00zUjRxM3lXa0F5?=
 =?utf-8?B?ZW41ZnMxck10bG9wNlNRNWVIYUl2dkdYaUlQTGNmMXB3aUFvcVF2OFdmK3N3?=
 =?utf-8?B?NEMyVFRRWGJOUXZHdjNXTVhNNDNmTjhHSmNyRUZmZVZHVmlCOWFaMjY0QkI5?=
 =?utf-8?B?d2ZIQm5YNkpVRjRuWkVEY0dRclNIWkcraWF1WGlZNHFtVjZTbGF2RUcrSndt?=
 =?utf-8?B?c1hDUndZZTlnZDZWNU9kZGQ2ZmY1SWdPN3dsZ1phMHVYSWh5MGpIQ2trSHVX?=
 =?utf-8?B?VUNGRWhPeEtzbVVlUkk2SjRoY0h3dEZtZGZxa3ZWNk0wdUVybHNmTFFqM2Nj?=
 =?utf-8?B?NDJDWmtVNGpYbGhwblFnZ0dtU0ZzblE0ZVQ5R2MzZVRZcGlFZWo3WmIyUmRi?=
 =?utf-8?B?TGYyWURnWmRCK2NqS1M4eWh3U0F3YjZ6R1pmbmRHNXRaZkhSdzBuVHVsZTMy?=
 =?utf-8?B?b1dXS21pb2RqYzVESnJQa1pCMVRMTW9uaEIxSHQ1SkdxZEkyQW5FZGMwYWQ5?=
 =?utf-8?B?UkplajNaSnR4VytKNTd0emtBc1g1QTRRN2VBZktOdFowaVFrNnlnWW9YTHRI?=
 =?utf-8?B?RUZNeWVKTnRoZGRSczhicS82MUJtN2t2NXB1ZEpyWkJHT0xnWks5Q3cyU2VZ?=
 =?utf-8?B?a1JxQ3k1Umw1OXU0TjAxdTl2SlJpeVYzcFg2a3R2bzdDekcyY2dwUVpQRlJM?=
 =?utf-8?B?eXZGZGd0by90OFBvN21ScGg0ZVdzZXdha0g0RExiaGNUNjNHdkZqdllNb1dY?=
 =?utf-8?B?VmVKb09PRkNKNzlyblBMTGUycGxDOHVFeEJqUHFuQTRKbEJ5U1dSZkEzZkdr?=
 =?utf-8?B?OXFsbVZzTlpKaEV2V0d6Vk8rZTVIeFRLa0szYnVkdDZiQ2RiQjJLajFuY2R0?=
 =?utf-8?B?ZHNiMERCajhEc3FzdDZDcGxGQXpRcEFVaGlnMmw3MWJBdTdrcUhVTFB3bVE3?=
 =?utf-8?B?c1p4Nm1Pc2JzRU4rTzcrbGM4aWFyOEo1d01OUGF5R2pLNXh2NHkvbTNtTmJS?=
 =?utf-8?B?bHdYRHl3NHdZTTFsZ1VoM2lGNkw3NkJqcVU0OXkwbEpGdUFkMWRIL2JFMGx3?=
 =?utf-8?B?VGRoN0RJekl4RmJQdW9zbmpSZ3ZrL3BtTXFTSzZjQ2Z0Q2FRb05Pa1ZOMWM3?=
 =?utf-8?B?NnNlMTFzblJPSU1GVDEzK0dQRCtBRVJiajVCYW45RW1MYlVpTG5TbzdqZDR4?=
 =?utf-8?B?bFVPbFFvY09oRVg4N2R6QUVwSmdHaDkyS285NitlVEh1V0lKRXNpckFUOXpk?=
 =?utf-8?B?OUpaNUR2WitFQ3NwdjJhNmtpek53NEJFL0pQSklOSlh6MkxVckZaaklmZ0Rr?=
 =?utf-8?B?UFZ2V2h2ZDBnWjlEaXhPb2FON1BnPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e063061-b1a4-4aa2-fec5-08d9c542bb01
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 12:01:04.0151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CB52r16LR9ga0BxFcvsIavRA7/qLaHIv3tfKEpMUXNUkaO8Npz9llUInnairq4dSScXJ5XqvU3FICbJWjIzCnBNOOBEef1hPUXWU6W7jonQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2170
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gUGF1bCwNCg0KdGhhbmtzIGZvciB5b3VyIHN1Z2dlc3Rpb25zLg0KDQo+QW0gMTYuMTEu
MjEgdW0gMTQ6MTMgc2NocmllYiBKZWRyemVqIEphZ2llbHNraToNCj4+IFRoZSBpNDBlX2FzcV9z
ZW5kX2NvbW1hbmQgd2lsbCBub3cgdXNlIGEgbm9uIGJsb2NraW5nDQo+PiB1c2xlZXBfcmFuZ2Ug
aWYgcG9zc2libGUgKG5vbi1hdG9taWMgY29udGV4dCksIGluc3RlYWQgb2YgYnVzeS13YWl0aW5n
DQo+PiB1ZGVsYXkuIFRoZSB1c2xlZXBfcmFuZ2UgZnVuY3Rpb24gdXNlcyBocnRpbWVycyB0byBw
cm92aWRlIGJldHRlcg0KPj4gcGVyZm9ybWFuY2UgYW5kIHJlbW92ZSB0aGUgbmVnYXRpdmUgaW1w
YWN0IG9mIGJ1c3ktd2FpdGluZyBpbg0KPg0KPnJlbW92ZSpzKg0KPg0KPj4gdGltZS1jcml0aWNh
bCBlbnZpcm9ubWVudHMuDQo+DQo+UGxlYXNlIHJlLWZsb3cgdGhlIHBhcmFncmFwaCBmb3IgNzUg
Y2hhcmFjdGVycyBwZXIgbGluZS4NCg0KU3VyZSwgaXQgd2lsbCBiZSBmaXhlZC4NCj4NCj4+IDEu
IFJlbmFtZSBpNDBlX2FzcV9zZW5kX2NvbW1hbmQgdG8gaTQwZV9hc3Ffc2VuZF9jb21tYW5kX2F0
b21pYw0KPj4gICAgIGFuZCBhZGQgNXRoIHBhcmFtZXRlciB0byBpbmZvcm0gaWYgY2FsbGVkIGZy
b20gYW4gYXRvbWljIGNvbnRleHQuDQo+PiAgICAgQ2FsbCBpbnNpZGUgdXNsZWVwX3JhbmdlIChp
ZiBub24tYXRvbWljKSBvciB1ZGVsYXkgKGlmIGF0b21pYykuDQo+DQo+SSBwcmVmZXIgaWYgYGk0
MGVfYXNxX3NlbmRfY29tbWFuZF9hdG9taWMoKWAgaW1wbGljaXRseSBhc3N1bWVzIGl04oCZcyBh
biANCj5hdG9taWMgY29udGV4dCB3aXRob3V0IGEgZmlmdGggYSBwYXJhbWV0ZXIuIFRvIG1ha2Ug
aXQgbW9yZSBjbGVhciwgbWF5YmUgDQo+ZXZlbiBpbnRyb2R1Y2UgYGk0MGVfYXNxX3NlbmRfY29t
bWFuZF9ub25hdG9taWMoKWAuDQoNClRoaXMgZnVuY3Rpb24gaGFzIGJlZW4gYWRkZWQgaW4gb3Jk
ZXIgdG8gYWRkIHBvc3NpYmlsaXR5DQp0byBzZW5kIGNvbW1hbmRzIGluIGF0b21pYyBjb250ZXh0
IGFuZCByZXVzZSBhbHJlYWR5IGV4aXN0aW5nDQpmdW5jdGlvbiAnaTQwZV9hc3Ffc2VuZF9jb21t
YW5kJyB3aXRoIHByZXZpb3VzIHNpZ25hdHVyZQ0KdG8gYXZvaWQgbW9kaWZ5aW5nIGFsbCBleGlz
dGluZyBjYWxscw0KdG8gaXQuIFBhcmFtZXRlciAnaXNfYXRvbWljIiBhbHNvDQpjbGVhcmx5IHBy
b3ZpZGVzIGluZm9ybWF0aW9uIGlmIGZ1bmN0aW9uIGlzIGJlaW5nDQppbnZva2VkIGluIGF0b21p
YyBjb250ZXh0IG9yIG5vdC4NCg0KPg0KPj4gMi4gQ2hhbmdlIGk0MGVfYXNxX3NlbmRfY29tbWFu
ZCB0byBpbnZva2UNCj4+ICAgICBpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKC4uLiwgZmFs
c2UpLg0KPj4gDQo+PiAzLiBDaGFuZ2UgdHdvIGZ1bmN0aW9uczoNCj4+ICAgICAgLSBpNDBlX2Fx
X3NldF92c2lfdWNfcHJvbWlzY19vbl92bGFuDQo+PiAgICAgIC0gaTQwZV9hcV9zZXRfdnNpX21j
X3Byb21pc2Nfb25fdmxhbg0KPj4gICAgIHRvIGV4cGxpY2l0bHkgdXNlIGk0MGVfYXNxX3NlbmRf
Y29tbWFuZF9hdG9taWMoLi4uLCB0cnVlKQ0KPj4gICAgIGluc3RlYWQgb2YgaTQwZV9hc3Ffc2Vu
ZF9jb21tYW5kLCBhcyB0aGV5IHVzZSBzcGlubG9ja3MgYW5kIGRvIHNvbWUNCj4+ICAgICB3b3Jr
IGluIGFuIGF0b21pYyBjb250ZXh0Lg0KPj4gICAgIEFsbCBvdGhlciBjYWxscyB0byBpNDBlX2Fz
cV9zZW5kX2NvbW1hbmQgcmVtYWluIHVuY2hhbmdlZC4NCj4NCj5Ib3cgY2FuIGl0IGJlIHRlc3Rl
ZCwgdGhhdCB0aGUgYnVzeS13YWl0aW5nIGlzIHJlZHVjZWQ/IFdoYXQgcGVyZig/KSANCj5jb21t
YW5kcyBuZWVkIHRvIGJlIGV4ZWN1dGVkPw0KDQpUaGlzIHBhdGNoIGZpbmRzIGl0cyB1c2UgZHVy
aW5nIGFuIGhpZ2gtcGVyZm9ybWFuY2Ugb3BlcmF0aW9ucy4NClRoZSBnb2FsIG9mIHRoaXMgcGF0
Y2ggaXMgdG8gcmVkdWNlIGRlbGF5IGNvbm5lY3RlZCB0byANCkFTUSBzZW5kaW5nIGNvbW1hbmRz
LiBIb25lc3RseSBJIGRvbid0IGtub3cgaW4gd2hpY2ggdGVzdCBjYXNlDQppdCBjYW4gYmUgY2hl
Y2tlZC4NCj4NCj4+IFRpdGxlOiBNaW5pbWl6ZSBhbW91bnQgb2YgYnVzeS13YWl0aW5nIGR1cmlu
ZyBBUSBzZW5kDQo+DQo+VGFnIG5vdCBuZWVkZWQuDQoNClN1cmUsIGl0IHdpbGwgYmUgcmVtb3Zl
ZC4NCj4NCj4+IFNpZ25lZC1vZmYtYnk6IERhd2lkIEx1a3dpbnNraSA8ZGF3aWQubHVrd2luc2tp
QGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IEplZHJ6ZWogSmFnaWVsc2tpIDxqZWRyemVq
LmphZ2llbHNraUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jIHwgMjkgKysrKysrKysrKysrKystLS0tLQ0KPj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMgfCAgNiArKy0tDQo+
PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oICB8IDE0ICsr
KysrLS0tLQ0KPj4gICAzIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0
aW9ucygtKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2FkbWlucS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X2FkbWlucS5jDQo+PiBpbmRleCA1OTM5MTJiMTc2MDkuLjdhYmVmODg4MDFmYiAxMDA2NDQNCj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hZG1pbnEuYw0KPj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jDQo+PiBA
QCAtNzY5LDIxICs3NjksMjIgQEAgc3RhdGljIGJvb2wgaTQwZV9hc3FfZG9uZShzdHJ1Y3QgaTQw
ZV9odyAqaHcpDQo+PiAgIH0NCj4+ICAgDQo+PiAgIC8qKg0KPj4gLSAqICBpNDBlX2FzcV9zZW5k
X2NvbW1hbmQgLSBzZW5kIGNvbW1hbmQgdG8gQWRtaW4gUXVldWUNCj4+ICsgKiAgaTQwZV9hc3Ff
c2VuZF9jb21tYW5kX2F0b21pYyAtIHNlbmQgY29tbWFuZCB0byBBZG1pbiBRdWV1ZQ0KPj4gICAg
KiAgQGh3OiBwb2ludGVyIHRvIHRoZSBodyBzdHJ1Y3QNCj4+ICAgICogIEBkZXNjOiBwcmVmaWxs
ZWQgZGVzY3JpcHRvciBkZXNjcmliaW5nIHRoZSBjb21tYW5kIChub24gRE1BIG1lbSkNCj4+ICAg
ICogIEBidWZmOiBidWZmZXIgdG8gdXNlIGZvciBpbmRpcmVjdCBjb21tYW5kcw0KPj4gICAgKiAg
QGJ1ZmZfc2l6ZTogc2l6ZSBvZiBidWZmZXIgZm9yIGluZGlyZWN0IGNvbW1hbmRzDQo+PiAgICAq
ICBAY21kX2RldGFpbHM6IHBvaW50ZXIgdG8gY29tbWFuZCBkZXRhaWxzIHN0cnVjdHVyZQ0KPj4g
KyAqICBAaXNfYXRvbWljX2NvbnRleHQ6IGlzIHRoZSBmdW5jdGlvbiBjYWxsZWQgaW4gYW4gYXRv
bWljIGNvbnRleHQ/DQo+PiAgICAqDQo+PiAgICAqICBUaGlzIGlzIHRoZSBtYWluIHNlbmQgY29t
bWFuZCBkcml2ZXIgcm91dGluZSBmb3IgdGhlIEFkbWluIFF1ZXVlIHNlbmQNCj4+ICAgICogIHF1
ZXVlLiAgSXQgcnVucyB0aGUgcXVldWUsIGNsZWFucyB0aGUgcXVldWUsIGV0Yw0KPj4gICAgKiov
DQo+PiAtaTQwZV9zdGF0dXMgaTQwZV9hc3Ffc2VuZF9jb21tYW5kKHN0cnVjdCBpNDBlX2h3ICpo
dywNCj4+IC0JCQkJc3RydWN0IGk0MGVfYXFfZGVzYyAqZGVzYywNCj4+IC0JCQkJdm9pZCAqYnVm
ZiwgLyogY2FuIGJlIE5VTEwgKi8NCj4+IC0JCQkJdTE2ICBidWZmX3NpemUsDQo+PiAtCQkJCXN0
cnVjdCBpNDBlX2FzcV9jbWRfZGV0YWlscyAqY21kX2RldGFpbHMpDQo+PiAraTQwZV9zdGF0dXMN
Cj4+ICtpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKHN0cnVjdCBpNDBlX2h3ICpodywgc3Ry
dWN0IGk0MGVfYXFfZGVzYyAqZGVzYywNCj4+ICsJCQkgICAgIHZvaWQgKmJ1ZmYsIC8qIGNhbiBi
ZSBOVUxMICovIHUxNiAgYnVmZl9zaXplLA0KPj4gKwkJCSAgICAgc3RydWN0IGk0MGVfYXNxX2Nt
ZF9kZXRhaWxzICpjbWRfZGV0YWlscywNCj4+ICsJCQkgICAgIGJvb2wgaXNfYXRvbWljX2NvbnRl
eHQpDQo+PiAgIHsNCj4+ICAgCWk0MGVfc3RhdHVzIHN0YXR1cyA9IDA7DQo+PiAgIAlzdHJ1Y3Qg
aTQwZV9kbWFfbWVtICpkbWFfYnVmZiA9IE5VTEw7DQo+PiBAQCAtOTEwLDcgKzkxMSwxMiBAQCBp
NDBlX3N0YXR1cyBpNDBlX2FzcV9zZW5kX2NvbW1hbmQoc3RydWN0IGk0MGVfaHcgKmh3LA0KPj4g
ICAJCQkgKi8NCj4+ICAgCQkJaWYgKGk0MGVfYXNxX2RvbmUoaHcpKQ0KPj4gICAJCQkJYnJlYWs7
DQo+PiAtCQkJdWRlbGF5KDUwKTsNCj4+ICsNCj4+ICsJCQlpZiAoaXNfYXRvbWljX2NvbnRleHQp
DQo+PiArCQkJCXVkZWxheSg1MCk7DQo+PiArCQkJZWxzZQ0KPj4gKwkJCQl1c2xlZXBfcmFuZ2Uo
NDAsIDYwKTsNCj4+ICsNCj4NCj5QbGVhc2UgbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2Us
IHdoeSB0aGUgcmFuZ2UgaXMgNDAgdG8gNjAgYW5kIG5vdCANCj4xMCB0byA1MCBmb3IgZXhhbXBs
ZT8gSSB3b3VsZCBoYXZlIGV4cGVjdGVkIHRoZSB1cHBlciBib3VuZCB0byByZW1haW4gNTAuDQoN
ClRoaXMgcmFuZ2Ugd2FzIGNob3NlbiBzbyB0aGF0IHRoZSB2YWx1ZSBpbiB0aGUgbWlkZGxlIGlz
IHRvIGJlIDUwbXMuDQpUaGUgYXVkaWJpbGl0eSBvZiB0aGlzIGFzc3VtcHRpb24gd2FzIGNvbmZp
cm1lZCBkdXJpbmcgdGVzdHM7IHRoZSBjaGFuZ2UgaGFkDQphIHBvc2l0aXZlIGVmZmVjdCBvbiBo
aWdoLXBlcmYgb3BlcmF0aW9ucy4gQW55d2F5IGl0IHdpbGwgYmUgbWVudGlvbmVkIGluIHRoZQ0K
Y29tbWl0IG1zZy4NCj4NCj4+ICAgCQkJdG90YWxfZGVsYXkgKz0gNTA7DQo+PiAgIAkJfSB3aGls
ZSAodG90YWxfZGVsYXkgPCBody0+YXEuYXNxX2NtZF90aW1lb3V0KTsNCj4+ICAgCX0NCj4+IEBA
IC05NjcsNiArOTczLDE1IEBAIGk0MGVfc3RhdHVzIGk0MGVfYXNxX3NlbmRfY29tbWFuZChzdHJ1
Y3QgaTQwZV9odyAqaHcsDQo+PiAgIAlyZXR1cm4gc3RhdHVzOw0KPj4gICB9DQo+PiAgIA0KPj4g
K2k0MGVfc3RhdHVzDQo+PiAraTQwZV9hc3Ffc2VuZF9jb21tYW5kKHN0cnVjdCBpNDBlX2h3ICpo
dywgc3RydWN0IGk0MGVfYXFfZGVzYyAqZGVzYywNCj4+ICsJCSAgICAgIHZvaWQgKmJ1ZmYsIC8q
IGNhbiBiZSBOVUxMICovIHUxNiAgYnVmZl9zaXplLA0KPj4gKwkJICAgICAgc3RydWN0IGk0MGVf
YXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscykNCj4+ICt7DQo+PiArCXJldHVybiBpNDBlX2Fz
cV9zZW5kX2NvbW1hbmRfYXRvbWljKGh3LCBkZXNjLCBidWZmLCBidWZmX3NpemUsDQo+PiArCQkJ
CQkgICAgY21kX2RldGFpbHMsIGZhbHNlKTsNCj4+ICt9DQo+PiArDQo+PiAgIC8qKg0KPj4gICAg
KiAgaTQwZV9maWxsX2RlZmF1bHRfZGlyZWN0X2NtZF9kZXNjIC0gQVEgZGVzY3JpcHRvciBoZWxw
ZXIgZnVuY3Rpb24NCj4+ICAgICogIEBkZXNjOiAgICAgcG9pbnRlciB0byB0aGUgdGVtcCBkZXNj
cmlwdG9yIChub24gRE1BIG1lbSkNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfY29tbW9uLmMNCj4+IGluZGV4IGI0ZDNmZWQwZDJmMi4uZjgxYTY3NGM4ZDQwIDEw
MDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2NvbW1v
bi5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9u
LmMNCj4+IEBAIC0yMDczLDcgKzIwNzMsOCBAQCBlbnVtIGk0MGVfc3RhdHVzX2NvZGUgaTQwZV9h
cV9zZXRfdnNpX21jX3Byb21pc2Nfb25fdmxhbihzdHJ1Y3QgaTQwZV9odyAqaHcsDQo+PiAgIAlj
bWQtPnNlaWQgPSBjcHVfdG9fbGUxNihzZWlkKTsNCj4+ICAgCWNtZC0+dmxhbl90YWcgPSBjcHVf
dG9fbGUxNih2aWQgfCBJNDBFX0FRQ19TRVRfVlNJX1ZMQU5fVkFMSUQpOw0KPj4gICANCj4+IC0J
c3RhdHVzID0gaTQwZV9hc3Ffc2VuZF9jb21tYW5kKGh3LCAmZGVzYywgTlVMTCwgMCwgY21kX2Rl
dGFpbHMpOw0KPj4gKwlzdGF0dXMgPSBpNDBlX2FzcV9zZW5kX2NvbW1hbmRfYXRvbWljKGh3LCAm
ZGVzYywgTlVMTCwgMCwNCj4+ICsJCQkJCSAgICAgIGNtZF9kZXRhaWxzLCB0cnVlKTsNCj4+ICAg
DQo+PiAgIAlyZXR1cm4gc3RhdHVzOw0KPj4gICB9DQo+PiBAQCAtMjExNCw3ICsyMTE1LDggQEAg
ZW51bSBpNDBlX3N0YXR1c19jb2RlIGk0MGVfYXFfc2V0X3ZzaV91Y19wcm9taXNjX29uX3ZsYW4o
c3RydWN0IGk0MGVfaHcgKmh3LA0KPj4gICAJY21kLT5zZWlkID0gY3B1X3RvX2xlMTYoc2VpZCk7
DQo+PiAgIAljbWQtPnZsYW5fdGFnID0gY3B1X3RvX2xlMTYodmlkIHwgSTQwRV9BUUNfU0VUX1ZT
SV9WTEFOX1ZBTElEKTsNCj4+ICAgDQo+PiAtCXN0YXR1cyA9IGk0MGVfYXNxX3NlbmRfY29tbWFu
ZChodywgJmRlc2MsIE5VTEwsIDAsIGNtZF9kZXRhaWxzKTsNCj4+ICsJc3RhdHVzID0gaTQwZV9h
c3Ffc2VuZF9jb21tYW5kX2F0b21pYyhodywgJmRlc2MsIE5VTEwsIDAsDQo+PiArCQkJCQkgICAg
ICBjbWRfZGV0YWlscywgdHJ1ZSk7DQo+PiAgIA0KPj4gICAJcmV0dXJuIHN0YXR1czsNCj4+ICAg
fQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9w
cm90b3R5cGUuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wcm90b3R5
cGUuaA0KPj4gaW5kZXggYWFlYTI5NzY0MGUwLi45MjQxYjYwMDVhZDMgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHJvdG90eXBlLmgNCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9wcm90b3R5cGUuaA0KPj4g
QEAgLTIyLDExICsyMiwxNSBAQCB2b2lkIGk0MGVfYWRtaW5xX2luaXRfcmluZ19kYXRhKHN0cnVj
dCBpNDBlX2h3ICpodyk7DQo+PiAgIGk0MGVfc3RhdHVzIGk0MGVfY2xlYW5fYXJxX2VsZW1lbnQo
c3RydWN0IGk0MGVfaHcgKmh3LA0KPj4gICAJCQkJCSAgICAgc3RydWN0IGk0MGVfYXJxX2V2ZW50
X2luZm8gKmUsDQo+PiAgIAkJCQkJICAgICB1MTYgKmV2ZW50c19wZW5kaW5nKTsNCj4+IC1pNDBl
X3N0YXR1cyBpNDBlX2FzcV9zZW5kX2NvbW1hbmQoc3RydWN0IGk0MGVfaHcgKmh3LA0KPj4gLQkJ
CQlzdHJ1Y3QgaTQwZV9hcV9kZXNjICpkZXNjLA0KPj4gLQkJCQl2b2lkICpidWZmLCAvKiBjYW4g
YmUgTlVMTCAqLw0KPj4gLQkJCQl1MTYgIGJ1ZmZfc2l6ZSwNCj4+IC0JCQkJc3RydWN0IGk0MGVf
YXNxX2NtZF9kZXRhaWxzICpjbWRfZGV0YWlscyk7DQo+PiAraTQwZV9zdGF0dXMNCj4+ICtpNDBl
X2FzcV9zZW5kX2NvbW1hbmQoc3RydWN0IGk0MGVfaHcgKmh3LCBzdHJ1Y3QgaTQwZV9hcV9kZXNj
ICpkZXNjLA0KPj4gKwkJICAgICAgdm9pZCAqYnVmZiwgLyogY2FuIGJlIE5VTEwgKi8gdTE2ICBi
dWZmX3NpemUsDQo+PiArCQkgICAgICBzdHJ1Y3QgaTQwZV9hc3FfY21kX2RldGFpbHMgKmNtZF9k
ZXRhaWxzKTsNCj4+ICtpNDBlX3N0YXR1cw0KPj4gK2k0MGVfYXNxX3NlbmRfY29tbWFuZF9hdG9t
aWMoc3RydWN0IGk0MGVfaHcgKmh3LCBzdHJ1Y3QgaTQwZV9hcV9kZXNjICpkZXNjLA0KPj4gKwkJ
CSAgICAgdm9pZCAqYnVmZiwgLyogY2FuIGJlIE5VTEwgKi8gdTE2ICBidWZmX3NpemUsDQo+PiAr
CQkJICAgICBzdHJ1Y3QgaTQwZV9hc3FfY21kX2RldGFpbHMgKmNtZF9kZXRhaWxzLA0KPj4gKwkJ
CSAgICAgYm9vbCBpc19hdG9taWNfY29udGV4dCk7DQo+PiAgIA0KPj4gICAvKiBkZWJ1ZyBmdW5j
dGlvbiBmb3IgYWRtaW5xICovDQo+PiAgIHZvaWQgaTQwZV9kZWJ1Z19hcShzdHJ1Y3QgaTQwZV9o
dyAqaHcsIGVudW0gaTQwZV9kZWJ1Z19tYXNrIG1hc2ssDQo+PiANCj4+IGJhc2UtY29tbWl0OiAx
MmQ5Y2QwMGYxMDMxN2FiNGUzNGUxNTBmMjEzN2YzMDYxZWNhYThmDQo+DQo+DQo+S2luZCByZWdh
cmRzLA0KPg0KPlBhdWwNCg0KVGhhbmsgeW91IGFuZCBhbHNvIGJlc3QgcmVnYXJkcywNCkplZHJ6
ZWoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
