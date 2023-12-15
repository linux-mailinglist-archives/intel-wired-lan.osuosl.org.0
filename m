Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A5B81453A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 11:13:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CAEF83AA8;
	Fri, 15 Dec 2023 10:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CAEF83AA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702635203;
	bh=X27vnEhzArItpb1xxeqOnBskZ4eLDfEaHOe7T2cIR04=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LYqdxWoygF2Qj3h6wHMQ+NJ5RMSkJL1GxHwkz0jUXVeLUBprXF2jaQKCccd/oQbnK
	 msBh2piNT17YZnYeiXk+5yD/b4nVU0zAvRxVuTx4mqXYxo2foBhFEZSv59hC1jgbe3
	 OEPnMAPHwTVujIZ2kCnxsX2Q3COGpabaLBwLbk8l8n+iBc+Vp040trNbFqdWN2ZbqV
	 zWitHnFIA4YOKRaPevFiLVa3UAVVKvMxhkz9Rab/C5rfv9iAgi00Z5yjyek86ZleBu
	 4Cx3k88AKeYhsh+ptWQpsuGuGAboAywJIwplXGnduCjUbpbydWz+AyA7dXUosqICUH
	 yujbbhGHtmNjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IG8gD__wzAyF; Fri, 15 Dec 2023 10:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A41EF83A93;
	Fri, 15 Dec 2023 10:13:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A41EF83A93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BBF31BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 10:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E9FE40869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 10:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E9FE40869
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id em6fklG5jrU9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 10:13:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 738E9404AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 10:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 738E9404AF
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="461719595"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="461719595"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:13:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="774720445"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="774720445"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 02:13:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 02:13:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 02:13:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 02:13:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhcApND5ViePCW2xmPrLExXz16eaTvnQnYKRsEmuCUrFCIxu3dR2OnVqEfQ8UmheGLeE1q/Hm3fjLuJg+hkeEb26FFWbVj3tPA4za3QfKuVbccA5Z8CCWP+D+pG2hL8XBgyxmOZOV8DMhwKcB7dD0vpNtVf3xzL02Znd8lwL6ek4zDkkE3UmgpjtewSt14qSeKQGUEa7UqREMDmnYinQta8M4j5FOPiK79yVUiVRU+rIxtvEBn86ivuXKZKzyi3TdAbVSMxLaqbRb3GykzttYYhDSJBaytOZd7HX3NyIXr8eP+cogT2YODczx0crLRlOwU1iGSn1TGL6TxKvNpAVFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmlxaUPJ0UFgl3sGNBT1eZHot/h70ac3V5Z7ZLkm8Ug=;
 b=App6CZd0QxWJ2G4bJoHEt4xmeq3LDUTYaj/WQ2USI2DtC/ubvkAEDGb7NF9eL1cIpDqf9/A0rlQunZjAG07G1HGliMfcVuzZuuW/PxGRXgPECjxVzEG2dqk9zUE/JST3hxzDuAFhNsEnq4QsRvb6I3tnJ0JViIbVs3RhGvEqBd1JDhPxYoVl67hmpW86zfDaDef0GQrk3osiRGMDm1g1bxVU3zWV9d2CyOTIo0ymZbanXs1PqWWW+rU1K6v9O6nPOMZKJujGhLI1hBMHuEVyxh7TGcL4dvPgDhHPf3B5jhIMVjYYHye5gSO8PoUXfJQlEeuIlKBtS0MzCeBVq3dBMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW4PR11MB6958.namprd11.prod.outlook.com (2603:10b6:303:229::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 10:13:10 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2%4]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 10:13:09 +0000
Message-ID: <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
Date: Fri, 15 Dec 2023 11:11:23 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
X-ClientProxiedBy: FR4P281CA0427.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d1::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW4PR11MB6958:EE_
X-MS-Office365-Filtering-Correlation-Id: 132d54fb-7b3d-4e66-43ed-08dbfd566fe4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N4XK+h40kqi6OXhGV7M1ptovQx/qRYTZaop81mRfxYOOXY+Q5378XVGlIIXvp3Vmdm8ufPGC586gBPxgdF2kxrLadUdWHKidw1w+4iC4JOOskvB4XX0VsavtKLF3muydXRW2bD9+uUE+aEnGiMYQN1lNPQTHtvWgJNId9CqnsEJXBGF3ZLbYU3ImpSBSQieH5i/HmK1ngxBgpsu0dq7JqK8KfzZQrdC6DNKstt23ok52AFSh8olaG8wlKdu3FGtPp8I9VgBgw2Ioz4GxqESFLO9c0bbyWRiZBD4q+WBY90FlR/QyETsZXllBP76pscow0vzHSulHZOPNN3id7+J88qyb6ExaDcom0G3dWRXvH1bBjWT3LKURIW2WdxAeexdMwnXIHuWgpQ3FSYZX7+eMENj20IA90UFtp1K1U8eppECHWd+OIiOcyhnpxPbiDPWc0DwXzWqKi9if2RbuYbtYpRmGRNl5Ltt2P+RVqoKKZLYtkwkWyOjG3BtcEU/Vjg8Uun4s24Nn82qKQCwQO+NITPS9zqZnVvEX5mwizx55Jtxjrz5NAGY8g6M40i8y2EA7LQFmRjlYr/5tRUDgoae3/p/asO+TjgeccmW4hUtPAvSdo1ZKoyTSmIp/+2vhdgzXLQ9CXU60a+235vQFW7lrzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(39860400002)(366004)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(31686004)(2616005)(38100700002)(31696002)(53546011)(6512007)(6506007)(6666004)(82960400001)(26005)(36756003)(478600001)(6486002)(966005)(41300700001)(66556008)(66946007)(66476007)(8676002)(8936002)(54906003)(316002)(4326008)(86362001)(2906002)(7416002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGdKUzBxR09PWTFMQ3J0M3FvcGFQVzN4SjREUmdHaE1mSzAwd2J3NEgwK3pj?=
 =?utf-8?B?U01BSys3SkNDV0RyYkJLSUxmSDQyUHhzUHprSm8vZU56OThCUVJvVHRDOTA0?=
 =?utf-8?B?NHlOZXBJYkFOYzRlQ0UwK09zRWtyWklKelNyQkVaV1YyRmZPYTNjdkx3SzFU?=
 =?utf-8?B?bld4cFZkSFoxTFRsQTZNOHlzVjFqWXZyY1BSNmNIeGJONFNoV3ZQNDZuVGVw?=
 =?utf-8?B?TGlNQ1I2c3FaUEd1MWhyTzU3TG9VNkhuaEMyWmIrbVNrZ3B4M2lIQ1RKUVg2?=
 =?utf-8?B?MTg4bmhhYWZkVG02bDlUQlBxV0lTRVNDNFJnU2VRMU4vYnh4NjlpYm5QalZw?=
 =?utf-8?B?ZEowdXVPS0krYmlWVWppdktiOGJmS0VmdnF1c0xVVks1N2ZjMm9CMkZLSE9s?=
 =?utf-8?B?NnJodjc3V1F4QXU3cmJPUG1haDNVRUQ5dWhaNThqMDZLRm5oTXZ5bk95Nmc1?=
 =?utf-8?B?L3NYVGlvZ0dvQUVQWTdmY2VIVlR5TzVnVitTSWhiL3lJN0Qrbng2OS9BVVRt?=
 =?utf-8?B?RC9iMnVkcTMyRUdwZmZJWE5NVGhZTFVSMERIaFlmN0tPaWZya2pSa004SGhR?=
 =?utf-8?B?MWNpWkJWR3JLUFZ0dHFFRmUzWGV6SExLRmJHaEZ2eTQyWDFFS05lRklyeE1u?=
 =?utf-8?B?ZDBKZi8rMWlYVjdoNTBtMHVNRXdIdEkrRitmY24rSDViSHFTVG50cW45UTNZ?=
 =?utf-8?B?dS9rZnl2NmZMQis0QTY1NFNTWjBjSCtPZ3d4TVN4WnFUSmpSclhJVFFUMytr?=
 =?utf-8?B?L1krSnF2Z1VnNVR6UktXSU9SWTFTaW5qWUVVS3NBaHZiSUJKbk14eUtqcmVN?=
 =?utf-8?B?eG5uMjFza2NIcFhudk5tYW9WV2tnSHFvelF6Y3l1QlBhSWE3TXBmZ1lHelN0?=
 =?utf-8?B?T2JTUC9LeFg5TFp3UjIwTFFFSWxSOUNWSEFwcnhNSDl2aXkyNHJ1YzBjc1FM?=
 =?utf-8?B?OEFWa0hGKzBoQzRnNzEzcHppUkxlRjlmeUxaYjBnOXozaGlSM0RsK0JPWlB5?=
 =?utf-8?B?TWRtRldZWnRyeG5xS3MwSHphbzNFMXJHNFBGbHNacVZHemYvbG1kRmdCVVNS?=
 =?utf-8?B?VEM0Y0RjeUZqZkF4Zlc0UkxYWWdsRjB2T21vSTZxRjlIV2h1cysydUV3ZUdN?=
 =?utf-8?B?UmM0aDJaVXZqWG80SGtTZ2MvQTVkdFIwTHhWYUFGdFlPaDQ3MzcyWWJtejJw?=
 =?utf-8?B?VEkwNmMyTU44bjNqWTcxUTgvVDJkTDMwKzB2ajV4a1ZGOXpzL2MvYnJlaVRE?=
 =?utf-8?B?YWVydUJNUGZPa3VGK0xydVRabGVsdXByTCs1V3FVVzFXSHhtNXhwdTdCWTZs?=
 =?utf-8?B?M254TGROVHY5dCtWQi9kdENPQjRCa2pLdCt2SjVaWmVyMXU0bFhwZkkyWXkr?=
 =?utf-8?B?SFRPejZPaEdxdFk5NkJpWm81VTgvZG84Qms1NWpyZW5NSnM2SWE1TW5vNFJB?=
 =?utf-8?B?NFpoRmJNNGQ0Z3NnMC91Q2ZYcjdGMHZIMXFjL3g4T3VLTFZiWE52UkYvNWU1?=
 =?utf-8?B?YkhFVUxHRFppM0xKK1RKT2lPclNXWEVpNWd4ZVpqS2tMZG1pa3h1RklxS253?=
 =?utf-8?B?eUJPZjdhbWZzS3Z6ek9FcHI0cVhsL2c0UkM2MmNNaHdiYlptTmI4bHlCM01i?=
 =?utf-8?B?SlRTQVJ6Z1QyL2Y3WXk2RXdkK05wcmpxelhQbitoTTZ6ejNReUI1T3NaMEpG?=
 =?utf-8?B?V3Qvb3Z6aDNQaGJyVVRQZkl3TXZEa3gvVVd4SGNCTWZlTDFWRTRraC81Z2JI?=
 =?utf-8?B?aVl5ZXBEZk41WWlTQmE3R3ZaRTBMRTlRZys1bExRZVZXWWJMN0hlL0VPVEM4?=
 =?utf-8?B?UGlQdmlTMm5ZVk5hWUFmMkY3dWRIY3pxT0RpUFJNTWtnYTR5SDdBc2ZKaThO?=
 =?utf-8?B?RStCZVd5U1JRcWRaVWNhM1VYc0FHaFh4OEJyU1ZRaVN6VGNVdXEzelYxNTdK?=
 =?utf-8?B?MVpPK0R5emhFTmgyT0xlSFJSUnEvTEJuZTgzQktIa1dOYjZaL201N2RLNnBz?=
 =?utf-8?B?MDdVVEZYV3QzUm1LUTZqUU1PRU9ERFRvaFdIV0Z0Rit0V3Q3ZXp6MWdYQlZW?=
 =?utf-8?B?czhmQ3E1TWJ0Vzd3akVqMHJOeG5pNCtnOWRFQjBsZnl6ZFd3ejdLaWZUbUxH?=
 =?utf-8?B?bWRJUDVqeXZEbnl5NWpSWWo1cjJYOURLWFdIY2dPaXlVMmlTZlZDRXBmS3Bw?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 132d54fb-7b3d-4e66-43ed-08dbfd566fe4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 10:13:09.2380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4R3EZrT3M0GBs6fLyDx2YrldSF/f47ctngjvM0VM5SCvty01Az6+t1SS3APgKbHEWG+c2byDQtJlGo+GEjORcDEbHjAxw/JJbOBT83DXhPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6958
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702635193; x=1734171193;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AbT6YwFLrBJkubdfiGfejYEpQpjD4CzYjpPYeJx4L04=;
 b=nsryYn+tdvEYNLS+Pcau3cX7egDU2i6YBdqTNfBq2V1pinBH52vehQ2w
 zzPSXlfhEr67DO43B7BXhPxHKiIQxAR9hd4np8clLfCzngZqS/lnjr78M
 v9aJc0/CQJyJiX/e7ttwlCMr8rTEaEe83IixsnJFWwQ2/9Z6Yh5w5x6+l
 Oe0XWBO5AvOHxpJCN6dqKolTNp86ftShDnAjhHYb2viVtB0W/NBv22aTG
 7apSuy0fAwumCyDl7LDIphKULjrFk6PVYZzXpo1pBgBuXEV9+ypc8mVJy
 bZETA8jWEDsBJbkaHXr7YZdXTQVyPJh5QtsAltYjwRloWvku72DAfR1q0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nsryYn+t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: andy@kernel.org, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 simon.horman@corigine.com, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, jiri@resnulli.us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+CkRhdGU6
IFR1ZSwgMTIgRGVjIDIwMjMgMTE6NDU6MjQgKzAxMDAKCj4gCj4gCj4gT24gMTEuMTIuMjAyMyAy
MjoyMywgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4+Cj4+Cj4+IE9uIDEyLzExLzIwMjMgNDozOCBBTSwg
QWxleGFuZGVyIExvYmFraW4gd3JvdGU6Cj4+PiBGcm9tOiBUb255IE5ndXllbiA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+Cj4+PiBEYXRlOiBGcmksIDggRGVjIDIwMjMgMTM6MzQ6MTAgLTA4
MDAKPj4+Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDEyLzcvMjAyMyA4OjQ5IEFNLCBNYXJjaW4gU3p5Y2lr
IHdyb3RlOgo+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgY3JlYXRpbmcgUEZDUCBmaWx0ZXJzIGluIHN3
aXRjaGRldiBtb2RlLiBBZGQgcGZjcCBtb2R1bGUKPj4+Pj4gdGhhdCBhbGxvd3MgdG8gY3JlYXRl
IGEgUEZDUC10eXBlIG5ldGRldi4gVGhlIG5ldGRldiB0aGVuIGNhbiBiZQo+Pj4+PiBwYXNzZWQg
dG8KPj4+Pj4gdGMgd2hlbiBjcmVhdGluZyBhIGZpbHRlciB0byBpbmRpY2F0ZSB0aGF0IFBGQ1Ag
ZmlsdGVyIHNob3VsZCBiZSBjcmVhdGVkLgo+Pj4+Pgo+Pj4+PiBUbyBhZGQgYSBQRkNQIGZpbHRl
ciwgYSBzcGVjaWFsIG5ldGRldiBtdXN0IGJlIGNyZWF0ZWQgYW5kIHBhc3NlZCB0byB0Ywo+Pj4+
PiBjb21tYW5kOgo+Pj4+Pgo+Pj4+PiDCoMKgwqAgaXAgbGluayBhZGQgcGZjcDAgdHlwZSBwZmNw
Cj4+Pj4+IMKgwqDCoCB0YyBmaWx0ZXIgYWRkIGRldiBldGgwIGluZ3Jlc3MgcHJpbyAxIGZsb3dl
ciBwZmNwX29wdHMgXAo+Pj4+PiDCoMKgwqDCoMKgIDE6MTJhYi9mZjpmZmZmZmZmZmZmZmZmZmYw
IHNraXBfaHcgYWN0aW9uIG1pcnJlZCBlZ3Jlc3MgcmVkaXJlY3QgXAo+Pj4+PiDCoMKgwqDCoMKg
IGRldiBwZmNwMAo+Pj4+Pgo+Pj4+PiBDaGFuZ2VzIGluIGlwcm91dGUyIFsxXSBhcmUgcmVxdWly
ZWQgdG8gdXNlIHBmY3Bfb3B0cyBpbiB0Yy4KPj4+Pj4KPj4+Pj4gSUNFIENPTU1TIHBhY2thZ2Ug
aXMgcmVxdWlyZWQgYXMgaXQgY29udGFpbnMgUEZDUCBwcm9maWxlcy4KPj4+Pj4KPj4+Pj4gUGFy
dCBvZiB0aGlzIHBhdGNoc2V0IG1vZGlmaWVzIElQX1RVTk5FTF8qX09QVHMsIHdoaWNoIHdlcmUg
cHJldmlvdXNseQo+Pj4+PiBzdG9yZWQgaW4gYSBfX2JlMTYuIEFsbCBwb3NzaWJsZSB2YWx1ZXMg
aGF2ZSBhbHJlYWR5IGJlZW4gdXNlZCwgbWFraW5nIGl0Cj4+Pj4+IGltcG9zc2libGUgdG8gYWRk
IG5ldyBvbmVzLgo+Pj4+Pgo+Pj4+PiBbMV0KPj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bmV0ZGV2LzIwMjMwNjE0MDkxNzU4LjExMTgwLTEtbWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5j
b20KPj4+Pj4gLS0tCj4+Pj4+IFRoaXMgcGF0Y2hzZXQgc2hvdWxkIGJlIGFwcGxpZWQgb24gdG9w
IG9mIHRoZSAiYm95cyIgdHJlZSBbMl0sIGFzIGl0Cj4+Pj4+IGRlcGVuZHMgb24gcmVjZW50IGJp
dG1hcCBjaGFuZ2VzLgo+Pj4+Cj4+Pj4gSXMgdGhpcyBmb3IgY29tbWVudCBvbmx5IChSRkMpPyBU
aGlzIGRvZXNuJ3Qgc2VlbSB0byBhcHBseSB0byBpd2wtbmV4dAo+Pj4+IGFuZCBpZiB0aGlzIGJh
c2VkIG9uLCBhbmQgaGFzIGRlcGVuZGVuY2llcyBmcm9tLCBhbm90aGVyIHRyZWUsIEkgY2FuJ3QK
Pj4+PiBhcHBseSB0aGVtIGhlcmUuCj4+Pgo+Pj4gSXQncyBub3QgYW4gUkZDLgo+Pj4gVGhlIHNl
cmllcyBjb250YWlucyBnZW5lcmljIGNvZGUgY2hhbmdlcyBhbmQgbXVzdCBnbyBkaXJlY3RseSB0
aHJvdWdoCj4+PiBuZXQtbmV4dC4gCj4+Cj4+IFNob3VsZCB0aGlzIGJlIG1hcmtlZCBmb3IgJ25l
dC1uZXh0JyByYXRoZXIgdGhhbiAnaXdsLW5leHQnIHRoZW4/Cj4gCj4gTXkgYmFkLCBzb3JyeS4K
PiBUaGlzIHNlcmllcyBzaG91bGQgZ28gZGlyZWN0bHkgdG8gbmV0LW5leHQuCj4gCj4gVGhhbmtz
LAo+IE1hcmNpbgo+IAo+Pgo+PiBUaGFua3MsCj4+IFRvbnkKPj4KPj4+IFRoZSBkZXBlbmRlbmN5
IG9uIHRoZSBiaXRtYXAgdHJlZSB3YXMgZGlzY3Vzc2VkIHdpdGggSmFrdWIgYW5kCj4+PiBZdXJ5
IGFuZCB3ZSBhZ3JlZWQgdGhhdCB0aGUgbmV0ZGV2IGd1eXMgd2lsbCBwdWxsIGl0IGJlZm9yZSBh
cHBseWluZwo+Pj4gdGhpcyBvbmUuCgpQaW5nPyA6cwpPciBzaG91bGQgd2UgcmVzdWJtaXQ/CgpU
aGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
