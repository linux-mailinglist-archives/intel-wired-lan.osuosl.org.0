Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1097AE88E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 11:02:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 744E860E97;
	Tue, 26 Sep 2023 09:02:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 744E860E97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695718946;
	bh=fxLlRpn7Bhe18s+2igPY9AjSg21/c4/DUwmtNdRZfuM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Bc5XXQy/iSQhACj/n5kQ2aJdrfoB8EfM+bdd4F7HcG7fAL0ZjuRkEE30OUtmQ3Bn
	 sm9CE1mrijnw5y+Js8gBSqEy/TYy8SY4ftCqRjmcjwQJeUU+3R7h1LFr/2pvlIQbIu
	 EGYLXGBk/NWKcE57RAu9F+nOe3QbKnVF0H46O68liYgnCI5sGhfxa66ySqV7EyLvxK
	 03saVStaLMW0bahEKpxiMi0WS73WRjt/8wO007x6MpwZCFYEZETDuTLuIC+cnhH2bR
	 TcGzQDwIF35M6bMw3BojwDVsrlHn0H90WOT9LzLEjO8bijFA55WH5JM/u3e46zyIS8
	 lmd3grbqvkTzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tl0rCBhEseNm; Tue, 26 Sep 2023 09:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F1B560DDF;
	Tue, 26 Sep 2023 09:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F1B560DDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 777061BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 09:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E532822B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 09:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E532822B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtMdVUfkFlJH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 09:02:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30317822B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 09:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30317822B5
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="445653409"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="445653409"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="742288816"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="742288816"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 02:02:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 02:02:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 02:02:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 02:02:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVizZm0smEl0SjPji0y/lb92qnqnd0Rmmmly/RrXBI0897vcFF+ObVllGAjjUWbKwg+NypfQmhyEctci5SnSL6d5Oyxsqff3opo6xoO983KrJK/9Ak+P2SOe92a7XMwc4XRimbJh1Tm41iKDKj7vL+Vui3EYGiabkhfE4130CKBQs/mbHfHmBgR6r51W/2TkVSf3KnjmeIEzVETuTDe9LzuWrHiznNqj2u/pe5DX0dKWFaAMUoJS7BcbywsV6dzyqh+nijr7feBvw544X1nynR+TnAf5rBjbANr5C6zjRC2TsSQl7KeicDmSCXq5sinFcXO4uEbyxBIOofltPp91ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M4GT1zNJguLkoRmxlcc5xfTK6lOjwnrFaZtEu8AL0YE=;
 b=iW0YKgy9EK/AtLiD66yehMWnL0/lFq31Vb8L3QqYRVb18UUOcJX/3URu1jpnLAJCVCIUCNsapacts3yT9xIEosCM3q5aevLaidd8N6dyoDk0Hpc96aD4GW8mfpR7zt/D+zfXDBgeZO0a2j9Rfmm387RKW8pym7lG2LUwjuXyPR/6SjQtRfwH0bBmGei70lTJX+KzAz+4uNsIRJAYOg20xSY9Z/1NhH3MFDn6rc+b3DEjTsqfY/UUdXO2tyEMRqoYGliiLio1zyapoxYsb9V/+y91XFLRLOfNH7y/bXfQO+Wu5Nbbil4aVroEpgd7wvyObOqGz6IORNnyZlpySdy6EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6801.namprd11.prod.outlook.com (2603:10b6:510:1c9::8)
 by PH7PR11MB7516.namprd11.prod.outlook.com (2603:10b6:510:275::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 09:01:59 +0000
Received: from PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::a1c:8309:650f:d08a]) by PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::a1c:8309:650f:d08a%3]) with mapi id 15.20.6768.029; Tue, 26 Sep 2023
 09:01:59 +0000
Message-ID: <9c9a2808-0b40-490c-a958-1771c76bff7e@intel.com>
Date: Tue, 26 Sep 2023 17:01:51 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20230926031206.12300-1-steven.zou@intel.com>
 <f1696dbc-2b97-1362-80b2-d3e29485405c@intel.com>
From: "Zou, Steven" <steven.zou@intel.com>
In-Reply-To: <f1696dbc-2b97-1362-80b2-d3e29485405c@intel.com>
X-ClientProxiedBy: SG2PR03CA0098.apcprd03.prod.outlook.com
 (2603:1096:4:7c::26) To PH8PR11MB6801.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6801:EE_|PH7PR11MB7516:EE_
X-MS-Office365-Filtering-Correlation-Id: b48a769e-63bc-471f-f400-08dbbe6f3ddc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YrjCS8Fuc3/gSeuJjU3i0JZGCxH+ZJzPGiGpbg3SoWRX5I37mT2DU+/nEBtzELNqJuhOtmcVbzDvuuKzQ6xYZq4eMX93Q4w40tKdhQbDDG6g+FApUKLSDARh6p5+A0tx17p+YB1/2po+f/gPMx/Su8IwSN+zz6xnpVfcmUSnK/38FZVwNAIW878E6nSAT5syJFQXWmk4oqM+KF3oTkKF4X8duSHDTe4gjcHtcqmKK4oKzPOajFiyOaq6x3ZRnib/WF0vmwsIJlUexOFNVt/pyr8/+kfMLrh+9fEhhLZsaI2i+R70OewhamBZZhgsHT3HhOgxd6EsYjlGT91uJZLZgTCvp5MPTWsQtqfY0WOAFXkLeP4tE69dd6o2DSNjQ1ZHhmFxjyonsvXgEHjD5/fwIfIfM5YbRZsePoEL4TuzUWpDnldUkbureNBMmeaO4Ht+d3kYTHMkYcHMl3bu4eyP/5KcWwbk9kyngyvxgy3XCSEBCersV+xGpfwhPVrMBf3nCKte+IKo/7wLdT/sVr9DN+e/eQNteC9vsQUotfQOtvKT7cu3LvgUhu3MQHTAyRQ9tJA5FX8C8UTQDo4m3WHGgxh8g5iC1Kb8r42K3cZBzmzMGrQ0b+/uMUeR9+qAgNvtDCoJRqY03pm3QVuMXDlFmg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6801.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(366004)(39860400002)(376002)(230922051799003)(451199024)(1800799009)(186009)(86362001)(31696002)(36756003)(31686004)(6666004)(53546011)(6506007)(26005)(5660300002)(66476007)(66556008)(66946007)(6512007)(2616005)(41300700001)(107886003)(316002)(6916009)(4326008)(8676002)(8936002)(478600001)(2906002)(82960400001)(38100700002)(6486002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3V5NGZPKzZrT2JidDVka0FJS3FlVDFsUDI2ZHV5Z1RrZmY4TElhMkY2a2s2?=
 =?utf-8?B?UDA1UVNMa2hlbGkrSThmR2JETDk2aklJcFFSRDlpNVk2UkxYZFBJMUE3OXZK?=
 =?utf-8?B?ZFE2cUtjWFp1bks0Vlp0YUVqK0FGaEZtVUxPSXpJU21Qdnd5NkQrZmhTVWxo?=
 =?utf-8?B?b3NaZWIxSitEU2xCQTcyeTNuOFFRMVFzS2ZZT1llWjhXZVY1S2Y1NS9jRkpD?=
 =?utf-8?B?bFlwNFF0bGhuTHI1ZWE3N3BjZ3hUSk1GNndNT003NnhtWUpxR21DNFdYcDJI?=
 =?utf-8?B?SHlDVnZQWk9tdENSemlSVHF3ZUl5OGNCOW1seTBXZ3lyZ0I2TzZjNWp0M2ww?=
 =?utf-8?B?WmFkWlhLNVlGWndTMTd2U1cxWkF5WWRiRU02NjZiTUd5cWU3MGVMcEgvZFI2?=
 =?utf-8?B?OEF6U0RnNnVHTFBDcmk3MmI3SXVtSDgraExqRmFLZnl5OW1YQy9GU05WWSti?=
 =?utf-8?B?ei93KzZDN2VxV0kwUGh1VlVuWHJhYm5JWVBEOVg1ZVZoTUU3UW0zVHJabk5S?=
 =?utf-8?B?SXlOWU00MmsrSUFxTFc4SFpiTXFNS041MHNZQ2V1UXpTZ09KZnpsYThiMkhJ?=
 =?utf-8?B?K1lid21vOVRLOTBvSUZGWXhDNFNPM2pHMmtxUFFTN1dXbUNjNWVNcE03Yjhk?=
 =?utf-8?B?WXdmeXB3dTM2QlNVNkNHM0h1Q1Fvc20vZXdPOHZXQ3I0ODlZMkJBanAyNVkx?=
 =?utf-8?B?UUd5R3hUc3c1K3hBRDVrSEVnZVJCWEl2VVFoOElUTUxrd3N0dUVQNUJSVS94?=
 =?utf-8?B?OUkrMitFdVZ2TmYwbUI2YW1BNmdhQTM4VmpqaWtJTU92UjJxZjNUcExZSWFO?=
 =?utf-8?B?dkpsdmZsYkFrMWtxNmkyZG5qWHJlWm9Manl0OGZweHQxNUtyOEVpamk4Nmlz?=
 =?utf-8?B?OEg4WUV0NWRMVlRsYi92eXBOdit0eUlONnM5Mzh5WkhQeXFTSER4R0dWSXY2?=
 =?utf-8?B?MFBIc0lXN25hb1lXWFhMUW11U2YveGxTajZqblZGUXByUzl3dXNTUGUwM3Zj?=
 =?utf-8?B?Mjd6MEo5VEk3ZTFVNXNZSDBWU0Y1RTg3QVBYLzQ1ZXFwNVg4bXFYVndnVWN1?=
 =?utf-8?B?UGh4azBISE5HY2FsNW40K1V3U1dpTmJDQU5hVnpGclN2UjZ3d3Y5ZEtuUmhh?=
 =?utf-8?B?Nm1jcmgwa2VXcVM2ZEF0V0JwVzlQYXpIbVorNGpnNjU3NkREM0Qvb3Uxa3k5?=
 =?utf-8?B?VWtwcmxoSCtSVW5nNVlBemtCM1g1TUY1MTB6ckNIWlJEN3cyRWRHNExTelZm?=
 =?utf-8?B?alM2UkRDMlRiQTN3OXVaeXpVUlVPYjc5WmN6dS93V0FvaFkyL3ZRVVV3TEEx?=
 =?utf-8?B?QWNFNnZtRzdXUUlwRTNYSGFjaWx0QnhpUmlKd1UyenQ1UHRBeGVJcUUwY210?=
 =?utf-8?B?eE5YUWJXUFl2b2g1S2NhOS9ldFlQVTBGWkhYdThPc1dkdWo4aDFyMkk4MjEw?=
 =?utf-8?B?NDlmVXJhSnlXVnNJeFpUYk5VeVNxNGl1TDBwVXBydE84UW15WU81TER6ak16?=
 =?utf-8?B?UHRpUHdlOFpGbXgwS2UzTkprWFhnTCt0bnRma0ZoeUxXUDRRWVJuc1BDS3pr?=
 =?utf-8?B?ODVra3pwUUo2UGU0S1JZdXVYSEVKSnBLNy9GaDIvSHBxSFpHMk9PN1I3VWZ3?=
 =?utf-8?B?TkZmdWxCNzJYcnFZQkxPR2hoYUJRb2RSVmlTT3locjVTVXZkaFh0bWRlYTNn?=
 =?utf-8?B?d2dmazlibHFGSTBXbktQajc2Q1F2VGVQdmNRS2hYeklCc2FCeWw4blVpbkpu?=
 =?utf-8?B?YUxKSWU2citBeElKdlFRQk45dE9lOExPRGhDeTB6bnVDeElLcjdKTDdSbEVU?=
 =?utf-8?B?TkxFSmgzYmkxMytQdEFlSFRmUmlWWHRKa2pmcXJDSi9UMVZpUDNFQlBUejQ3?=
 =?utf-8?B?Wk9WdXlFdFF6cEZYNDVhd2dZYWdjanRoc3hkM2NkbERHb1JCRmM5NUUxd09Z?=
 =?utf-8?B?TEoyUjUwaW43R3ZJMXpJdHpYWVBqbFdBV3p1R1BMNFZaRFNzZks5NFdVaEJP?=
 =?utf-8?B?QmFRSHFVeVQ3U3Q5dWVZdFZjK2dUakEwbldIZkp5S0l5S1FqQjdjU01nUEp1?=
 =?utf-8?B?WFVSUEptaitYMG1sTEQyOE9hdFZSRFFhQ2ZWQXJSVlZKcG5YUTVrd1VvMzRI?=
 =?utf-8?Q?+PPnehZ/+LVc2hnoOL/kEXwqQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b48a769e-63bc-471f-f400-08dbbe6f3ddc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6801.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 09:01:59.4628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cvUk4MxRqvLhPgvO8iUxqKGX2QNlbtPGOsX4pd4gS8CnMj1bcCCD1YVjnFaeAd3BNM/uCbohYdfLYT1Nfxr4Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7516
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695718938; x=1727254938;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OtnAE1hUyNztWJfBHUL3LwUHnVuo2Ax8DCieAKTX1d8=;
 b=XHk+mq1q8/9du1PSXrajTGyWz8T7Xhk5PHIYRBsET5h8pgmCToDrHd3C
 MetdcFqMdOqneOGJTXau5h7+IuLnornfoQ4sQZ88zCD0qkB742AkTtW4i
 9eaGQ7T5FBA22qSvCIpwxlTvXu/VxtxEebBldzRzV7CVVcwbo/12A8FSl
 vvnfJ7MmTHQr5P3EFBSYu1NqptKnGbvv/fz4mpPAc5H3HHgN1MX1+36Ef
 yeT19NqYM6MBjBty1ubrf1vgszP/OVbOdGKbUAYY9824aUtNH7DXnZZMt
 3SjT00+4ph3kPo5js63kWuhO8BtoLoT122nQlzM4zz7poFjdcJ/mR/8Yy
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XHk+mq1q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6] ice: Add support for
 switch recipe reusing feature
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDkvMjYvMjAyMyA0OjExIFBNLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6Cj4gT24gOS8yNi8y
MyAwNToxMiwgU3RldmVuIFpvdSB3cm90ZToKPj4gSWYgRTgxMCBmaXJtd2FyZSBzdXBwb3J0cyB0
aGUgY29ycmVzcG9uZGluZyBmdW5jdGlvbmFsaXR5LCB0aGUgZHJpdmVyCj4+IGFsbG93cyBQRnMg
dG8gc3Vic2NyaWJlIHRoZSBzYW1lIHN3aXRjaCByZWNpcGVzLiBUaGVuIHdoZW4gdGhlIFBGIGlz
IAo+PiBkb25lCj4+IHdpdGggYSBzd2l0Y2ggcmVjaXBlcywgdGhlIFBGIGNhbiBhc2sgZmlybXdh
cmUgdG8gZnJlZSB0aGF0IHN3aXRjaCAKPj4gcmVjaXBlLgo+Pgo+PiBXaGVuIHVzZXJzIGNvbmZp
Z3VyZSBhIHJ1bGUgdG8gUEZuIGludG8gRTgxMCBzd2l0Y2ggY29tcG9uZW50LCBpZiAKPj4gdGhl
cmUgaXMKPj4gbm8gZXhpc3RpbmcgcmVjaXBlIG1hdGNoaW5nIHRoaXMgcnVsZSdzIHBhdHRlcm4s
IHRoZSBkcml2ZXIgd2lsbCByZXF1ZXN0Cj4+IGZpcm13YXJlIHRvIGFsbG9jYXRlIGFuZCByZXR1
cm4gYSBuZXcgcmVjaXBlIHJlc291cmNlIGZvciB0aGUgcnVsZSBieQo+PiBjYWxsaW5nIGljZV9h
ZGRfc3dfcmVjaXBlKCkgYW5kIGljZV9hbGxvY19yZWNpcGUoKS4gSWYgdGhlcmUgaXMgYW4gCj4+
IGV4aXN0aW5nCj4+IHJlY2lwZSBtYXRjaGluZyB0aGlzIHJ1bGUncyBwYXR0ZXJuIHdpdGggZGlm
ZmVyZW50IGtleSB2YWx1ZSwgb3IgdGhpcyAKPj4gaXMgYQo+PiBzYW1lIHNlY29uZCBydWxlIHRv
IFBGbSBpbnRvIHN3aXRjaCBjb21wb25lbnQsIHRoZSBkcml2ZXIgY2hlY2tzIG91dCAKPj4gdGhp
cwo+PiByZWNpcGUgYnkgY2FsbGluZyBpY2VfZmluZF9yZWNwKCksIHRoZSBkcml2ZXIgd2lsbCB0
ZWxsIGZpcm13YXJlIHRvIAo+PiBzaGFyZQo+PiB1c2luZyB0aGlzIHNhbWUgcmVjaXBlIHJlc291
cmNlIGJ5IGNhbGxpbmcgCj4+IGljZV9zdWJzY3JpYmFibGVfcmVjcF9zaGFyZWQoKQo+PiBhbmQg
aWNlX3N1YnNjcmliZV9yZWNpcGUoKS4KPj4KPj4gV2hlbiBmaXJtd2FyZSBkZXRlY3RzIHRoYXQg
YWxsIHN1YnNjcmliaW5nIFBGcyBoYXZlIGZyZWVkIHRoZSBzd2l0Y2gKPj4gcmVjaXBlLCBmaXJt
d2FyZSB3aWxsIGZyZWUgdGhlIHN3aXRjaCByZWNpcGUgc28gdGhhdCBpdCBjYW4gYmUgcmV1c2Vk
Lgo+Pgo+PiBUaGlzIGZlYXR1cmUgYWxzbyBmaXhlcyBhIHByb2JsZW0gd2hlcmUgYWxsIHN3aXRj
aCByZWNpcGVzIHdvdWxkIAo+PiBldmVudHVhbGx5Cj4+IGJlIGV4aGF1c3RlZCBiZWNhdXNlIHN3
aXRjaCByZWNpcGVzIGNvdWxkIG5vdCBiZSBmcmVlZCwgYXMgZnJlZWluZyBhIAo+PiBzaGFyZWQK
Pj4gcmVjaXBlIGNvdWxkIHBvdGVudGlhbGx5IGJyZWFrIG90aGVyIFBGcyB0aGF0IHdlcmUgdXNp
bmcgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN0ZXZlbiBab3UgPHN0ZXZlbi56b3VAaW50ZWwu
Y29tPgo+PiAtLS0KPj4gdjI6Cj4+IC0gZml4IG52bSB2ZXJzaW9uIGRldGVjdGlvbiBmb3IgdGhl
IGZlYXR1cmUgKFRoYW5rcyB0byBQcnplbWVrKQo+PiAtIGZpeCBtb3JlIHNtYWxsIGNvbW1pdCBt
ZXNzYWdlIFJldmlld2VkLWJ5IFByemVtZWsKPj4KPj4gdjM6IHJlZmFjdG9yIGljZV9hbGxvY19y
ZWNpcGUgdG8gc3VwcG9ydCBib3RoIGxlZ2FjeSBhbmQgbmV3IG1ldGhvZHMKPj4KPj4gdjQ6Cj4+
IC0gYSBzbWFsbCBjaGFuZ2UgaW4gaWNlX3N1YnNjcmliZV9yZWNpcGUsIHN3X3Jlc3AgaW5zdGVh
ZCBvZiBmbHVfcmVzcAo+PiAtIG1vdmUgaWNlX3N1YnNjcmliZV9yZWNpcGUoKSBhbmQgaWNlX3N1
YnNjcmliYWJsZV9yZWNwX3NoYXJlZCgpIAo+PiBkZWZpbml0aW9ucwo+PiBkb3duIHRvIGJlZm9y
ZSBpY2VfYWRkX2Fkdl9yZWNpcGUoKQo+PiAtIGFkZCBjb21taXQgbWVzc2FnZSBmb3IgbmV3IGZ1
bmN0aW9uIG9mIGljZV9zdWJzY3JpYmVfcmVjaXBlKCkKPj4KPj4gdjU6Cj4+IC0gcmVmYWN0b3Ig
aWNlX2luaXRfY2hrX3N1YnNjcmliYWJsZV9yZWNpcGVfc3VwcG9ydCgpIGFuZCByZXBsYWNlIGl0
IHRvCj4+IGljZV9pbml0X2Noa19yZWNpcGVfcmV1c2Vfc3VwcG9ydCgpCj4+IC0gYWRkIGEgbmV3
bGluZSBiZWZvcmUgJ3JldHVybicgaW4gaWNlX2luaXRfaHcoKQo+PiAtIHJlbW92ZSByZWR1bmRh
bnQgY2FzdCBvZiB1OAo+PiAtIG1ha2UgdTggYW5kIHUxNiB0byB1MzIgaW4gdGhlIHN1YmZ1bmN0
aW9ucwo+Pgo+PiB2NjoKPj4gLSBmaXggQWRtaW5RIGRhdGEgdHlwZSBmcm9tL3RvIEZXIGFuZCBj
YXN0aW5nIGZvciBiaXRtYXAgdHlwZSBpc3N1ZQo+PiAtIGZpeCBob2xlIHBhZGRpbmcgd2l0aCBh
ZGRpbmcgbmV3IG1lbWJlciBpbiBpY2VfaHcgc3RydWN0dXJlCj4+IC0gZml4IHNldHRpbmcgdGhl
IGZsYWcgb2YgcmVjcF9jcmVhdGVkIGlzc3VlCj4+IC0gZml4IHJlZHVuZGFudCBsYWJsZQo+PiAt
IGNoYW5nZSBiaXQgdHJhdmVyc2FsIG1ldGhvZAo+PiAtLS0KPj4gwqAgLi4uL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaMKgwqAgfMKgwqAgNCArLQo+PiDCoCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jwqDCoCB8wqDCoCAyICsKPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYWcuY8KgwqDCoMKgwqAgfMKgwqAg
NCArLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jwqDC
oCB8IDI0NyArKysrKysrKysrKysrKystLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9zd2l0Y2guaMKgwqAgfMKgwqAgNSArLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaMKgwqDCoMKgIHzCoMKgIDIgKwo+PiDCoCA2IGZpbGVz
IGNoYW5nZWQsIDIyOSBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkKPgo+IEhpLCB3ZSBh
cmUgbm90IHlldCBkb25lIHdpdGggb3VyIHByZS1JV0wgKGUxMDAwKSByZXZpZXcuCj4KPiBHZW5l
cmFsIHJ1bGUgaXMgdG8gaGF2ZSBSZXZpZXdlZC1ieTogdGFnIHByaW9yIHRvIHBvc3RpbmcgaGVy
ZS4KPiBBbmQgcHVibGljIHN1Ym1pc3Npb24gdmVyc2lvbmluZyBzaG91bGQgc3RhcnQgd2l0aCB2
MSwgd2l0aG91dCB0aGUgCj4gY2hhbmdlbG9nIGZyb20gZTEwMDAuCj4KPiBOb3JtYWxseSBvbmUg
c2hvdWxkIGFsc28gQ0MgbmV0ZGV2LCB3aGljaCB5b3UgaGF2ZSBub3QuCgoKVGhhbmsgeW91IHZl
cnkgbXVjaCEKTXkgbWlzdGFrZS4KUGxlYXNlIGlnbm9yZSBteSBzdWJtaXNzaW9uIHRoaXMgdGlt
ZSBoZXJlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
