Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC4958210F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 09:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D926360AE8;
	Wed, 27 Jul 2022 07:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D926360AE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658906833;
	bh=YjPz8zpO541cAyj6MvVWbRNU4SJ027NQKr8IEXQIAuM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1vXSn+kzqTlnyFzZnXiGcM1XCa1lO0JYkvTIYWKpHOi5ODXnFMmDRi4dUIaGVJZPL
	 3bzUBZ7j3egymhkhq/H0OBGcs7cxCv5VKil8SGqA1V/NQr9MmmGOO/zCtLBEk8/jDr
	 hXcuX5Mlg2lZpd2IbPiG/m9Bzfm40fkASAAbNs3mR49EAx5gUKcgo6w+IuadC1D1zc
	 lLMM8JvFe8saTeYW6lKaKnPNmLx7KclJssGQQDfUCqDDkVCroZZNVo5kxxS+Jn01lG
	 7T/UwK448PT26gjXoIJ0XbIvpmeZlxG0Rg6Tp/Ud0W5SgF6HlEW9k8ya9VJmpiWy8G
	 lgaWTwJ4AXndQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMCUh5pG2O5w; Wed, 27 Jul 2022 07:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6B0C60ADB;
	Wed, 27 Jul 2022 07:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6B0C60ADB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B01A21BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 894AF60AE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 894AF60AE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d73KwecgoBJE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 07:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7EE760ACC
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7EE760ACC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="267934338"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="267934338"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 00:27:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="575862356"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 27 Jul 2022 00:27:06 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 00:27:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 00:27:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 00:27:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5j7NrV9fJ+6STnsoVcuXVgimLGHExeXA+wijWQWp0dukIXfZ9Qn6/5IIPKCwpXh8N2443/qAE36dTfqvEYUf8jCYaEdsN5G6CKGNcaGxO2/aYZry1P8Jf/OtP3kJKDm34QqP5zxb5enT6++AHKeGzw9vUMkRgF7hwxrOVpg5GfhH7dCbv40uCeElP+Ci+tosZZASC9GmNcIh41KDMeNJTGQOqfif10LW9b7ePavKG2u1P/s8lsLDSPFt7jg03Q3N/gRXm8HQd7jZQ/qRgY23VOaHaAEZENeJ5gohXx1zDWA9YX6F14HLtJlfwDe3YpyQJ92Ops0gG+QsPiALecqcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9byNVsXCU6pQ/Z1ZNhpfzvxHDqyXh3t2pgpNmwaVYQ=;
 b=dNsQHrJazDbvzh1cZMEdrOsch24t5NeZg06Jn5PRpRSSg93k4zR32l6uwlXsmTA6qdKQ9ZpqTl9arjevWWCoPKfJzjg9zVo2up/jmZHXR9mCDsv3jwvrat+ERbteKzwKa0eLoOSgh0k3T6lINDom4+/E/+JesYrb1bF6KXgtW+F/nhVTRVW3K4YQmdcGcnfRZ6ixubDRjZPKw8PXtUTb6+o3GK9bBpDDeUtHyFOWjr+fe57QCBopzVE77fZdDLAiVIaTRTDeoEskg5mxEwXKG8TZpbH6hRF7mvHKoRoTQrNqNaAqmpW6AqQzZ5mVToNZd0AEHVWd6NpMp6zclsB2gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.21; Wed, 27 Jul
 2022 07:27:04 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::6423:dab9:c2a3:41d9%3]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 07:27:04 +0000
Message-ID: <116e5725-faf8-94a9-9912-7031f5ba0a99@intel.com>
Date: Wed, 27 Jul 2022 09:26:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
 <20220725070210.488309-2-anatolii.gerasymenko@intel.com>
 <9b99fe2a-c4e8-6e4d-cf9c-4d28796ed9bf@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <9b99fe2a-c4e8-6e4d-cf9c-4d28796ed9bf@intel.com>
X-ClientProxiedBy: LO4P123CA0114.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:192::11) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a7af4e71-14c3-46c0-2613-08da6fa1672a
X-MS-TrafficTypeDiagnostic: DM5PR11MB1372:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KsdEl+MqbFG1zgxD14fI8GfhXXy/aQE/6vcn6jk49XM4kkxKecwinHQVpGyGpbAQn32Ku9xS0qroo3y6R0lx9V69i+z8sSahrDOoy9LSBQWxpAPAP+Hd+Mi7pk5ByP89zECwtaSZtElepIOi//YPeojDc+tmj6SchEvyW1Fux6qE10VKu1FIvdQSVDUZJX7FF4NRBHZJ0eE5H0Zj7Vsp26EJs1DtdVn3gg7THDJAd11DDvXEtI7fknYykUn2Qk4+cngkCGV24NU6vukwyJfI9aoOvJYSd1RUC/Q/FJl7urpNWKCxs9Nx0q00itU6t4XKM5s3Yw0vFhahH0CBY5wzIRg9YGm6Bq7/6ey/jRVpB4nfI8yRYCaAsf5H3Ynle78lg/mbPb2WqJJUbGjOOHC6ByBnid16Vhj/4VljJNYGWQ+kIfyLw/pPAAFr5jL0b/16AeudsXzn4/NalCB3XTSmo+IQPhZnyDosa9aGt1Y1b6MfGSA6lKfnHn0WgbFBvZXb5Biic2GVVyKM+yd7U+T8xDVO6S53SpgfI+veIKCZ7301kY2C20/o66GcbJsUiTeDuFLG7KS7YQyWPOUUf20j1d26rdgIvP3VTLdV0IVcyS0BU08qjsBXOPCzRpK+z9yzht66txYftJSvBjYi0mYt928vJndpfogCfw9pnqdAgllUSWUJ6od30ufVaPnK3PzVUrJwccmBNO83ql/3vAgzLpcCg8V8QbOfEmaYsdPaOAC5opXXxL0GaagDX2Pt+A1ZYI03Zf0IDl1oJCggHcvdwqb/z35bNvLrJM2ia7mtsZTIyRAFZBvsWhzqxXAZ72eJ512RZrI/MmUmS3DUMcLYIEBHquFXTFOp3W8OENSbvio=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(376002)(396003)(6512007)(82960400001)(8936002)(41300700001)(31686004)(38100700002)(83380400001)(86362001)(31696002)(6666004)(5660300002)(186003)(36756003)(54906003)(107886003)(8676002)(6486002)(66476007)(4326008)(66556008)(53546011)(66946007)(2616005)(6506007)(2906002)(44832011)(26005)(478600001)(316002)(168613001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3lFTmFxN0VaaFQxczhWVGZIYXdGdUxhZDluZm5lNlR3WE5DUU5MOTVoNXZX?=
 =?utf-8?B?NVMyVUM0SmM4MWJ3ZFhxaW54L2hjT1REM2NDUlUwdGNGNXByREY3Rmx2eGRw?=
 =?utf-8?B?TkZDVy9WdXkyTjNmeTlzdC95S0ZjRml6UWR0c0wxTjVnSlJjWkdPd0NVVk8y?=
 =?utf-8?B?UWt6NXUrZ1czclpHSjhsSEh1aWRXU2tzeTZoQmRxUmFPYzgxbVJvTnA4VjJj?=
 =?utf-8?B?VnVtbkhML1BmemVFSUcrRjZ3NVBESTQ2OWtjYTlKSDRaaFErb1k0QmtScjJ6?=
 =?utf-8?B?UW1OSllCbUJhMEg4UE12UHkvN0J1NkRPZjJTL0RUK3RvSS9iZUIyMDdBRmRn?=
 =?utf-8?B?RktOUC8zQVVYQnpFSlJJeGFteEUrUVIxK3BwMC9jRHFiODFoR0NvVzJPTWt3?=
 =?utf-8?B?Y0kwZ0lZOXBVcy9TS2NSWjJXTnRxYkx6UUxsS3F1eUxKU3U3UHNnVlhMMUJt?=
 =?utf-8?B?Sm1NLy9UMGliR3liYXdkUTNWZXRLaTBtS0JpVGQ2cmsyOXpoYkx1RnNmWW5k?=
 =?utf-8?B?K0lKVFBBbUlYanpOVlgvR1VDay9sMVA2V3BQZ1hMVThlcUxKNDZSTEF6Vzg4?=
 =?utf-8?B?c2lHbVlyak44NTJwS2xzUHJmcHV3U2Y2OTd1dG9vMEtpUUF3TG1LYWovN2V6?=
 =?utf-8?B?WER0RUwrYTZ4V0FQMlZOWk00U1VIeTk3YUxtQ09TOTRIR3p2WEMrdk9SaEFm?=
 =?utf-8?B?VlErUm1KOHZnQkFLSjkyNnplU29OY0F1QWlEMDYzdWtDQkpBRDVEczJiWFdY?=
 =?utf-8?B?WjlhWi9yNlkzNmNrSUdhK05pSkoyMldycjEwU2NMb3JYSGNBTll5WHA0Z2x0?=
 =?utf-8?B?eXM2L25WeHYraGxjMTcvdWEvY2hiUVl2VXVwb0hRZVl0YUtDMXZZNTM5ZU4r?=
 =?utf-8?B?Y1l2Q3pjUjNIc1lXcTFSbU5NR2hWY1FuR1VPU3JhUG5SaUlXMGlnTlg4TmNM?=
 =?utf-8?B?a1hZNVBxNjVOVXRZZEFGUTRjZDVBWFJPWjV3bFVSRXJKdGZRY3c2cDF3TkpS?=
 =?utf-8?B?ZmFHM0IrUzE5NGpQUVdYd2I2TG1kcjd4RllJT1lESm5tK2pSMGFqS01jS2ta?=
 =?utf-8?B?b2piNElYdW12RDhkaUNGZzkxNFNOTFVsWnp2NHpJMkRVY0l4a251L1l1QnBk?=
 =?utf-8?B?SVFZRE1yQUlsbmFLVjFqclRRb01EMGR5V1pMb2tSM3dZNFlReTJHSzAwN1hY?=
 =?utf-8?B?NHIySlEyRUdpZUw2ZGRvYlhVSklOQW8xaDVJSUtDYjRrTEZqRWtDMGRBc2tn?=
 =?utf-8?B?ejcrTDRQMDJTMUxrTk5FQXRvblNXRWhlTXRNWmJzWnRETStVOTJLK3k5Unp6?=
 =?utf-8?B?R1F1VjhvSTVCcCtnSGVNcG1aRFJDMnJENWpQRnVGNGlBKzhPeGFReGNrbE43?=
 =?utf-8?B?SzUxOHR0K01tQXdBNWhWMXl2aUV2TUhXVmZTemhmM1ZVVzlXMXE0VjhhQmhk?=
 =?utf-8?B?Rm84UUtxSTNGdC9FWHhCM0tXTmVZbjRadXF6LzBFazRtYWluZGNIQllxblpq?=
 =?utf-8?B?U2Zza0hlTnRWeHJNSUx4MXJsWXZzbHhkUE10U2dXYVJvNk1nNDhTUGhmVW0v?=
 =?utf-8?B?NUJEWXQzc29EYXNjVTN2ampJUGJ0R2RXTlJnOS96YksyU3RqQ0hXcW16ZWJT?=
 =?utf-8?B?OWVDeTdCNFhLRHlKNXRRU2hIUTNhMThiNGNtek02UGxXOTRZUXNxOWJGUXlL?=
 =?utf-8?B?VExLRG5OS1hHYkplajArQmxBODU5dHRqQnU5ZGV4ZXRUUDZHS1BYMmovbWtG?=
 =?utf-8?B?VjNGTnZtR0IrdEJFYURvcitLaTZCMUxrb09RZGlSSmhXVHNoWjBGMzFwRjZn?=
 =?utf-8?B?Q2FOWmF0TWdEbDVGbzQ0TG1kd2RlT2I4NTh3RG9zQThCWHRQUjdiaTJheC9Y?=
 =?utf-8?B?U2hhN1lST2QrU01OZlQrdVA0b1pvZFZFSWhGMWV0K3RNaGFxVWdLbU5HZGJM?=
 =?utf-8?B?bXUva1lzbnl3T0x4RFk1NmRoT0pqS29mcFpIVW1vMm9LSmlPdWUyL0FOVHlP?=
 =?utf-8?B?SVFscS93YjFuNmNyUlhUTFRsYS85TFd2Sjd6RUlweEtnRkd3UkVPOHp1bk56?=
 =?utf-8?B?K0QxclZFT2s5S1B2Y1dYQTJKQVB3UGZrVXMzSWl5bktsaGI3d1lIeUtkU004?=
 =?utf-8?B?RkdxM0FnY0Y5b05hcFhCVnRZcW9adTJUa2lPTUx1UjUyWFB4L3F1eGVrSG5n?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7af4e71-14c3-46c0-2613-08da6fa1672a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 07:27:04.0860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nesVrmyA1/HReUG4HG/tYMxn41hyc++cYn9ew+HbNL3udCuCYpgDjZnkVua1GekoX8POi0Pi+KF/sSwE9jGjMrsJR5f3+MyVPEvNrwnM+Sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658906827; x=1690442827;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8y2gtJbSaLC3JFpWsdSc5szGoIJ9pH8KgSWjC7hn6EM=;
 b=kcieqYHGyM02lUkW8meA33TvM2sGVUXLk+z8RyGQzOiY2yvSpT8Q/ho1
 d4yRt7XhFfxS49BnfyPH7xe63fbxWFk4TY50GO3IhTC70p0Zl8ClZfSlX
 Pl3JJeEmuTDxEJ67Rw9dyL024/toge9WuBygzBYl/d1PzLH9qSCgbSl4i
 AdHgN/yMEBvreQz8McyqUU7dcvJJsvlSCDoZbo2JHttJcMmaRGhwOvHTQ
 m+wrOUwbuReXrgMUlyAg1UTRpsNtLmSQryCFeGAOahj3RS6fvltqLYYIs
 iwmG8OuIMozvbbNnFEjACFnLaoAt+8CDYvQ8Y/DoKgn+cUUoPtcyhHY6o
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kcieqYHG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ice: Implement
 control of FCS/CRC stripping
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjYuMDcuMjAyMiAyMzo0MCwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gCj4gCj4gT24gNy8yNS8y
MDIyIDEyOjAyIEFNLCBBbmF0b2xpaSBHZXJhc3ltZW5rbyB3cm90ZToKPj4gRnJvbTogSmVzc2Ug
QnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Cj4+Cj4+IFRoZSBkcml2ZXIg
Y2FuIGFsbG93IHRoZSB1c2VyIHRvIGNvbmZpZ3VyZSB3aGV0aGVyIHRoZSBDUkMgYWthIHRoZSBG
Q1MKPj4gKEZyYW1lIENoZWNrIFNlcXVlbmNlKSBpcyBETUEnZCB0byB0aGUgaG9zdCBhcyBwYXJ0
IG9mIHRoZSByZWNlaXZlCj4+IGJ1ZmZlci7CoCBUaGUgZHJpdmVyIHVzdWFsbHkgd2FudHMgdGhp
cyBmZWF0dXJlIGRpc2FibGVkIHNvIHRoYXQgdGhlCj4+IGhhcmR3YXJlIGNoZWNrcyB0aGUgRkNT
IGFuZCBzdHJpcHMgaXQgaW4gb3JkZXIgdG8gc2F2ZSBQQ0kgYmFuZHdpZHRoLgo+Pgo+PiBDb250
cm9sIHRoZSByZWNlcHRpb24gb2YgRkNTIHRvIHRoZSBob3N0IHVzaW5nIHRoZSBjb21tYW5kOgo+
PiBldGh0b29sIC1LIGV0aDAgcngtZmNzIDxvbnxvZmY+Cj4+Cj4+IFRoZSBkZWZhdWx0IHNob3du
IGluIGV0aHRvb2wgLWsgZXRoMCB8IGdyZXAgZmNzOyBzaG91bGQgYmUgIm9mZiIsIGFzIHRoZQo+
PiBoYXJkd2FyZSB3aWxsIGRyb3AgYW55IGZyYW1lIHdpdGggYSBiYWQgY2hlY2tzdW0sIGFuZCBE
TUEgb2YgdGhlCj4+IGNoZWNrc3VtIGlzIHVzZWxlc3Mgb3ZlcmhlYWQgZXNwZWNpYWxseSBmb3Ig
c21hbGwgcGFja2V0cy4KPj4KPj4gVGVzdGluZyBIaW50czoKPj4gdGVzdCB0aGUgRkNTL0NSQyBh
cnJpdmVzIHdpdGggcmVjZWl2ZWQgcGFja2V0cyB1c2luZwo+PiB0Y3BkdW1wIC1ubnBpIGV0aDAg
LXh4eHgKPj4gYW5kIGl0IHNob3VsZCBzaG93IGNyYyBkYXRhIGFzIHRoZSBsYXN0IDQgYnl0ZXMg
b2YgdGhlIHBhY2tldC4gQ2FuIGFsc28KPj4gdXNlIHdpcmVzaGFyayB0byB0dXJuIG9uIENSQyBj
aGVja2luZyBhbmQgY2hlY2sgdGhlIGRhdGEgaXMgY29ycmVjdC4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Cj4+IENvLURl
dmVsb3BlZC1ieTogR3J6ZWdvcnogTml0a2EgPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogR3J6ZWdvcnogTml0a2EgPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT4K
Pj4gQ28tRGV2ZWxvcGVkLWJ5OiBCZW5qYW1pbiBNaWthaWxlbmtvIDxiZW5qYW1pbi5taWthaWxl
bmtvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gTWlrYWlsZW5rbyA8YmVu
amFtaW4ubWlrYWlsZW5rb0BpbnRlbC5jb20+Cj4+IENvLURldmVsb3BlZC1ieTogQW5hdG9saWkg
R2VyYXN5bWVua28gPGFuYXRvbGlpLmdlcmFzeW1lbmtvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogQW5hdG9saWkgR2VyYXN5bWVua28gPGFuYXRvbGlpLmdlcmFzeW1lbmtvQGludGVsLmNv
bT4KPiAKPiBXQVJOSU5HOiAnQ28tZGV2ZWxvcGVkLWJ5OicgaXMgdGhlIHByZWZlcnJlZCBzaWdu
YXR1cmUgZm9ybQoKRml4ZWQuIHY0IGhhcyBiZWVuIHNlbnQuCgpUaGFua3MsIFRvbnkuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
