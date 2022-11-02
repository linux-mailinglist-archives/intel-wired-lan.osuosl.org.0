Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EACB615D4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 09:05:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4245B404E7;
	Wed,  2 Nov 2022 08:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4245B404E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667376301;
	bh=5Scz4Ou4AY5b+S7OphqgSsP/mogo5LhoWctdYOjwMUA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sgfhjte5YBD/9yMXxc2HHiUn00+RcFXZF7c0uvkEpoGNyZsa468GuidJb/f62rT02
	 tUMsa/JjR5UFrNGZ+kVr6xJkObXorFgyhOXlg/FsTwTMKzHRiFUcKTE5WnJ9YpZeQM
	 DTInJGvkdlcQ7dpPoghmRVVLlYaNQMa8f0Wj2wtTpnWo15/PUzqs2MyYvIE/H8DXfH
	 KAc/S2uZSkCCv1/pj2RNRxyNFjztWXkjsWZDbNclJw1OgUpzIj4/ohxaj6cUwxcL4D
	 ZzBvvdXV6P5RQZF6LIXfEkMhCn2jQEXR8+kz2o5WUH70LtLOX3VvoANaBqG1E3FGqz
	 4iDRrDCDFknfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69M7nQh-J1z3; Wed,  2 Nov 2022 08:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD6EC40425;
	Wed,  2 Nov 2022 08:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD6EC40425
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE6D01BF306
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1F0D8146D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1F0D8146D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhL09CvOAezG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 08:04:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD7E4812CB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD7E4812CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 08:04:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="292654613"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="292654613"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 01:04:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="879385348"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="879385348"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2022 01:04:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 01:04:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 01:04:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 01:04:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adviywuxIqSnjU6JizlLigSdK3rv7fcK217OK0pCj+4RRRn3hYzxQPiF3VlNYePorLCzEhzsR9afuDotiuUSZLz/nXCzSNDFfF0pigkORhnjRciaywfj7648rMhcfWIp+cGUundxWaTs0KG1mAtfmX4QtJ+dt770Q9vw7ARprUwf66V+CqIeTPM3bCaPcchN0u/40xhsbz4PRpNN78XDceVmjI4g+4pxZn/BlIN1aLGFX3NWDA+bop5DSVAR4SsvdpuKH7TqvRvsEW4OxKU0axF/s1MbPkSGqmwQ4KnSLcCrK9iXqfSPEQ4GE85JFcN3N+Qbbm9wD20c89wRt6q/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N/3kkeesPguiLdC8WjamomblLEycJzGhyvJo3S0qK2E=;
 b=M+RcxABM896Dgog6iKpHrkxyGIyAAOdISrtfU6ExMO4/Lv1bb5TaYZbOX9WrOw++BxcrdFbXTlAngivq0vgPm3amaJcOVW4CYVyiKhvlk//OXolUakrHhOZvTDJCyvElGe6aT0YPE95wAnkB4ep1ws2touTfsYftJ530i/09YO1vSvNXCpU0v5jtoNekbd0U0y7bjqLtvhHq2kKQh/0fRq/v98+qWkyeTUPlp942gqSMZctsBvC5B/fpFIVinbZIgXpuD9jyXLovyp0meNbLh7803nKohLl8k4pNRFTZdHsWF0VjDFQ6AtUwvAohf0A6Awdd5uCalkclnkUFihz1gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14; Wed, 2 Nov
 2022 08:04:01 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::c707:b5b9:4841:b09e]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::c707:b5b9:4841:b09e%5]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 08:04:01 +0000
Message-ID: <fa75f705-a0c8-35a3-5ba3-1d1785398a71@intel.com>
Date: Wed, 2 Nov 2022 09:03:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221031071430.5998-1-anatolii.gerasymenko@intel.com>
 <ee73169c-0060-e997-8661-c0e76cff12ff@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <ee73169c-0060-e997-8661-c0e76cff12ff@intel.com>
X-ClientProxiedBy: LO4P123CA0166.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18a::9) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3413:EE_|PH7PR11MB7122:EE_
X-MS-Office365-Filtering-Correlation-Id: b3a85e0a-19ba-43e0-face-08dabca8cc89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rf2nMBDCSFOYkX4xP4twV4q0Ov2ZDSMjc6Dc5C56QMYh5765lwHgXdFPQyFGAnrlxQ9qTsnenttbZxiHBXIDEhU82+Ttv/RCHPdM5g9+z2EEKX/CVuUQsgPnkRppvPixTP3EbQqFA3u1uMBgf+2p1iMaTtzvTwH7Qxv/QmDgqvNkzkTTAeI9TfV1oxuCufBQLKuPgYJwpbK+T/u8W1nXkX/Fam25lC2bASyaIQq7zRkfD2F++BWp77DrTzcbIoxBuz9FCJRgmXGXjDuypO4NEbztUeeU32omzUIQmXlkpewQu0zrWSpoX1kLzklzfzglw3TKUlJBdjt7KOaR5NT+B/ir5GXo5N0nw+jFojAawl2plUZQpY+kTwg4DYL0DozqxxJaX+0VZWkKDYo6s0LzaR88fvl4YMbGuiY3y82nqhkibuTwbL5IXHu/C7NJlY/aeVVMQPnKrhkA4mWXHJvG8vUoxjwg991EvnjeUvactrcrmOTiMpnSJWgt7O5s+4wPpK+26d9arxZh6JUhGNmDHyES/IH1nYY/WgoOYwG9Qmwu3OAFTW98eu5I+ncxAVitz4I4+eNaeEiR9qFfNuBqtHiw/NOnORoUwmFIHOp8LDf4CGEjPjq52dkquzumbEWWCdEcvcOfbwLRHZrXF5Yw59x1VzxjE24Akz+dKvs4+t76LbImjyO8+8BqYJQ0EX2Dn3ABSCEBROAiqMw6EtOr/9yvp35tH6KmrZWbGIspKG8zrEW2fNFQaNbs6j4aRCzqeKkEptGCo9KgSXHR+PAzKu1ICs2E/zn5ohAWMr2OFyM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199015)(6666004)(2906002)(44832011)(4744005)(31686004)(26005)(6506007)(66556008)(5660300002)(478600001)(6486002)(8936002)(36756003)(41300700001)(66946007)(83380400001)(86362001)(316002)(53546011)(186003)(66476007)(82960400001)(8676002)(2616005)(38100700002)(6512007)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkhUZ3Y3UmdhYzlWUy95MFdYbS9TM3l3cGliSzVLRTNMWEh3clFhZythT01N?=
 =?utf-8?B?ZGhKLzNhT3NkUXlsVHFOWUFrVUpyQlc4MFBkRUMzK1dhZGhFaFllTHpiM2dm?=
 =?utf-8?B?NFBkMkc1bENET3NrU1MxVlVnRWdlc1lQVG1rMlRZQmY1dkpDUzVVaC80amdx?=
 =?utf-8?B?UmVEMVRrSlRuc1hXalB6amUxcHUvZXRCaXZubDAzMC9GdGprVGhJZitSbDRG?=
 =?utf-8?B?RU5MOHZ5QzJTeE5JSkRzUW1mcHVGVjdEdlRlSDNyRWhEdXlKaVdBbCtDemY0?=
 =?utf-8?B?UHJ1b3pTeXp4dE5PRWNHdHlXakF1RzlnVFY4MzJrbTFxRWV6N096Mm9meDlx?=
 =?utf-8?B?SFgzSFlwa2VlVmVrN2R4YkdLOTRsb1BXdWViRksrQW5hdytadCtBcDNHckVD?=
 =?utf-8?B?d1p2aE5jTVh2VXozR3NMMk9rV1pDN1JKOHhxc2VlRXZoVnpuNFdhUk5ONFFM?=
 =?utf-8?B?YzJFUHJma0pPWSt6cWcwaEplelhqdGVTQmh2dEUyYmZIVit0NGtHRys1TE5z?=
 =?utf-8?B?OW9YSVR3TGdqS1dLdnhqd21qRWo3aFh2bFVWMVFPK1YwYlVacXlRcnFRSkdV?=
 =?utf-8?B?bGlZQ28yNlpYVk05OG13dUFxQkdtemV2cnd2OVErdGVFcVYzY2hxMmpBQVBl?=
 =?utf-8?B?Q2p6bkZKc0J3RllNR2pPVVJUNENVSWQwa2k1TjVXM3NmWUFSNGx5a281Nnox?=
 =?utf-8?B?eENJZ3AxL21kNkpsSlBVMFM0RGdGMGdCV0ZxY29qeGZYZjhxemphWCtQVmli?=
 =?utf-8?B?ays5OXJ5MnpxSDdPVWJpbXhBRFJGU0VxdDFWYlpqV3N2YU8xM2ltSkZWYWlh?=
 =?utf-8?B?K3htR2RKYm1BYkMvWVByS1Y1bWM1Zmt5SU14YmNTQXNFZEcvRHZudTVkVjFS?=
 =?utf-8?B?VUd4V2VFSkpqZ2p2VGpOdkJpZndyOEZJSno5ZTNHZm05OHdSUzRuc3c2QW9h?=
 =?utf-8?B?MWpPaXc4eUVQVVB5czdBWkRiUTZLN0xQWkpxVWNjVVV2OGtsOHprZkJlYjE1?=
 =?utf-8?B?NDJoSTMwSGtnWlV4ZjBueEw2cC9DdEFEajlIalZ2ZTgyZjVPUUhXUkJ6eTlH?=
 =?utf-8?B?QmlHeXZTY1NQZElDekhoZGxlZm8zK1hHdHR2cHpkY2oxa0hJWEc4Y0ZBS1Nx?=
 =?utf-8?B?c3FIeFg4amZzellyWFdGa0N5Y2dKcjVySFgzUS90REZ6VHBRWmk3MUl4citv?=
 =?utf-8?B?bmg2MHpDVnRmb3loZHR3NjdRcVp6K3lBMU9NMDNFV2s4RkZDeHNTem5OUmVM?=
 =?utf-8?B?MnVNbDlWZWtQY3BhV3BCMlduV3gzZThmTWRHOGd3cndkdnVaSEZHN0RoamNn?=
 =?utf-8?B?SnlSWEFQTXdpZW5mSUszQjB5aFNteU55eWZVL2VzbjJUWE9RZEtFWlM4d0Z2?=
 =?utf-8?B?OFVTc3I5emk5MkJoVUpuLzZHajRQa2dSK3BxT3NvZ3RQQzhwSTAwLzYzNVJ4?=
 =?utf-8?B?SzAyK0pBVDFFNm5jSVhNcTREU2c5OFBQVTkyN0NveGp0L3BqTmxaby9RSlpt?=
 =?utf-8?B?RzNtdVRIN1QwaGxxUkozaHhQSmt5VUNUMjkzdzFrN3dJUzVDUWRhbU5XcEVw?=
 =?utf-8?B?dDlWRW15TUxsRTkra3JIRlQwaFJQNGdGWUJFamc4QlpvQVdwc1U3bTFjQmta?=
 =?utf-8?B?MnVxZ1d6Y2daN1dUeVhleGMrdDJZOWdTNHBaRmQvWGtZdEU0Z0traEUydFhv?=
 =?utf-8?B?cGFxZFErcmNCZ1duMjZBUWx5eGhmcUZKK3hKUkFWVTVRSnBEWFZsdzNhZHE2?=
 =?utf-8?B?TTBreXBRVTIyK3Q1TzJqcnFhaVJBZzdFUHRIUlQycVFKem53cHZPdHhQdWhl?=
 =?utf-8?B?Z1RCV3ArWVorTGFhZlNWTExidVo2bUJVaUlkb1lwV0s5eDhienhDa1BhK2ZF?=
 =?utf-8?B?bzJOckFYRXIxYjBFN0ViVjh4SW1mYWliU21XcEFDZUtER0laSmhlMzNCcHdV?=
 =?utf-8?B?dThJMjB4d1N4RkNESHVpc2N1OExibFNtT2pJMmx5UmdjQWJJcjJDNzRmVkRq?=
 =?utf-8?B?WnVMRzZNcVQxc0VvMTBEQ3hoNE5JQ0kzbXNLT3Ntc0l1cHM2VWoxT0VsNDhk?=
 =?utf-8?B?SFdlczRlL3RncVdockJVdGNSMDlPdGFHV2QrdFQ2ZVlBZmhFS1VGdVhWbnZO?=
 =?utf-8?B?b3J6ekM4TGJJT1JTMC9XWHEvS0p1UWliWVlOMVFDb25kMHpNRDJJcTZ5TmJ3?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3a85e0a-19ba-43e0-face-08dabca8cc89
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 08:04:01.5498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M2pTxnICYyu2oUgCIFUjk3rTrAkcrL8X4N5W5MhKs05QwVNzwKL83tC0rhkQsU0NHGwEnnPcu9TAEzZW3Uz0H2rFHu1URAMSHGr+TwQc1S8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667376292; x=1698912292;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6O5EEB7/eM8QdyyiKbJvlroAXk4ZV7+jxHM7LqqVpC8=;
 b=RGYx3I4cEqGKok4R0si5GZpkRa/8kZAstQv3CxdRyPnFh+oLP611iYN2
 p4Ap1wzx03aV9fNILp62slN0B8pMQRyfxXhvNF6WIyC2Smk1Ym9kK+dCo
 tLXxNuMVycg7uKdABKwBjYGg0lll7aUgXLgJh8CJYCRDAKic7Rpa3Onxi
 W8F+xouZFV1hj3oaVnCyYFUaw7zGyTsBK5XuvNiM9BbAva5rXsodCU9PU
 Py9JmJZp9duOp/y4AE8fB1BK7nGr02MN0VlVRK7KGkDg2xinjp21zuhvs
 8QqF2Kx1WDSD+2yIghpAPbXgtrlJDeJhz7DlqqFa/FCn5Z0oDoWNyvnvX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RGYx3I4c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Create a separate kthread
 to handle ptp extts work
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



On 01.11.2022 21:54, Tony Nguyen wrote:
> On 10/31/2022 12:14 AM, Anatolii Gerasymenko wrote:
>> ice_ptp_extts_work() and ice_ptp_periodic_work() are both scheduled on
>> the same kthread_worker pf.ptp.kworker. But, ice_ptp_periodic_work()
>> sends messages to ADQ and waits for responses. This causes
> 
> Is this supposed to be AQ (not ADQ)?
> 

Yes, I meant Admin Queue. Thanks for noticing this.

>> ice_ptp_extts_work() to be blocked while waiting to be scheduled. This
>> causes problems with the reading of the incoming signal timestamps,
>> which disrupts a 100 Hz signal.
>>
>> Create an additional kthread_worker pf.ptp.kworker_extts to service only
>> ice_ptp_extts_work() as soon as possible.
>>
>> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
>> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
