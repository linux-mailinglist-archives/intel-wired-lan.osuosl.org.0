Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B414985541C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 21:37:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 339F541921;
	Wed, 14 Feb 2024 20:37:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KdBytgOycxrN; Wed, 14 Feb 2024 20:37:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F82541918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707943040;
	bh=PgKFXtyOVLSeqBbQQsDZ+tePgp1L82ZJfHWDP0IgABI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZWxWUob3HhgjPVC1QS7upCwAzNY4uZLnPVoBu3jtRNRiFmrcEO2TFYY51hp0Y9TcL
	 gJq66ckYB54J2rrY5jDvl7/P/Bc9SAcaMxAYE/TYeBBVG7Pl1c5M2JLi9xNYGGlZdp
	 EKrVr7oOrTag1babSersBL/KA2gkP7LCjPHzdLvyOtON0fYwHDNPb7sy39LCEkI9g/
	 1HohGiPugWWZ6VBD55dzalQsMrDgCskj+lVolUC0GP/6WyfZsTx4byJWEDmHXh/yan
	 MDIQBsQO2M978NPyawoibp4Fe3ftG9s4pfRH6NO9q64Ob+YMUDadgK0OWvNTlEJbF2
	 L93XhKEa02AXg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F82541918;
	Wed, 14 Feb 2024 20:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEE0A1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 20:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B86204186D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 20:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nx4-X7xJ6hOw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 20:37:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 934CD41910
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 934CD41910
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 934CD41910
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 20:37:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19425832"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="19425832"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:37:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="40799907"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 12:37:15 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 12:37:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 12:37:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 12:37:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYlZhsIm0KowAwFa66BmawACILE07rBnVoAZtWeNzCxFDbvr5DgM24Ka8nQMtyvSwsdJMsdDD5odbENlDJqg5GpsSKraLQt+g+Ytj5MDGDP9VdrC4GDcOz5acc4woNEOp8sBzflGILN9Pi3jL9oP/gGFbtr/cpNfugJyuXNzWMVgsRKw7l0/98cUKbugmq+2tCAZ6l/2fZofyaMWdHG7+nVj+bePexpoQ5HtXxH7KZn1BYuKUPwLE4PvI64qk4abHlRm8IMqySfXrqCP5vj0DxtLlADaQr337BQZgrzE2Azybyv8Up2oHo3RbMyBBkSAMXs3CacaIOYqJNUqAzDNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PgKFXtyOVLSeqBbQQsDZ+tePgp1L82ZJfHWDP0IgABI=;
 b=mo+ePmHgB5wsCilA/rZHmXV/kMVajhdES8tm2qG/HAwdy5eaNjmkK4fSOgJmzfr90FsZbU4UZjUTu1lo727u3pP/zfE/AFiXCfVf/HmGMHwX2E9ivmfubF1i/FIni5YA8ihcXqBlUK6HtLw5v4CP1U+iETAqZdBhZ1fx4/JP+e4hM5dn5wcOkLaSWRLIGmm0euNoqgm9vpcEcXNSOjie5dXXu1HGBOyZ+7167UYgTlJjW0dkZwMCraxSsgk4ePa4msGgBCX8CUgcmmA6OFSB+7+70T8Xr7az8uwykRgXTh1d7aqWq2g+AObKWLU/tcugfhu1KM88jM4jrWMFqEXy7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7589.namprd11.prod.outlook.com (2603:10b6:806:34a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.33; Wed, 14 Feb
 2024 20:37:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 20:37:06 +0000
Message-ID: <da0050e0-f038-4d14-875c-158f4bef4981@intel.com>
Date: Wed, 14 Feb 2024 12:37:04 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Richard
 Cochran" <richardcochran@gmail.com>
References: <20240213115410.415573-1-o.rempel@pengutronix.de>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240213115410.415573-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0092.namprd03.prod.outlook.com
 (2603:10b6:303:b7::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7589:EE_
X-MS-Office365-Filtering-Correlation-Id: b589239e-3501-4de0-3600-08dc2d9cb579
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D1Y0di6hPu9+2wLed7EkMaWfnknG/fsER9dYwKqDyf5zrpl42wmzdjrgxXLImfaT7PkHBajO5nLjZI+NdMzyJkI9OS47Gk/Z5X2FhW2N6CpClAq+mu7u3Ih4w3UAynBZiYhSxQhFpvzxlPcGgMTtMygDvWhu/Y4rxTz6ZdiBzHvuJBz6UjxhEbK6WDaZWgLL4xQ0zD5F6UlbG5+v8Cmi5l/rm5/40bGmaEVR1Q2DJRfjxFd2/R/gwdCy8NwowMxA8vTtwTycJxO62Fp1GOiwBpX1qmJ8gkTFxq7ej4SN/I0f7ViAHE0W+FDNOtgke2DD5H4XiNaBN8wP6zC/x3KegDjFaCRbt+jPVGAUm7WVA+9Eg1H2+N8TYPuvVDjPc6IsTcJyO6rUYOysFnDCrnKeflc/oT5WFTgz9V8USZUgJs/c214Zp49uRO6I+W73iF7wJi5297qp6iJD5et0G5OdN4ktKOT2KIkNF3Bihg70rHCl3VEZfukI+dhXjQMzuo6gTMZDsOu1lGJMv2gGWpo/ILMzc6kOMzJTanV2Hx0bMrF8E9t8nOUQ2AZhx8X3fLxx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(39860400002)(396003)(346002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(31686004)(6512007)(6506007)(6486002)(86362001)(2906002)(36756003)(7416002)(66946007)(26005)(8676002)(38100700002)(31696002)(66556008)(82960400001)(478600001)(53546011)(110136005)(316002)(66476007)(4326008)(5660300002)(4744005)(8936002)(2616005)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDE0NTdxM2dFeG96Z05xQi9uOXlMMVlLRDVuUlREb1Vzcm9xNUZVaS9qamUw?=
 =?utf-8?B?ZTZoOGNyZHd6UWtCWlkxaEZmTllkSFo0c2xNK2pQVlZmNVFPbkJYbUF6WWk1?=
 =?utf-8?B?d0p4OFpBb2lTSFc2a2ViVEd3OE1TMWk1bTAwbXVqZGVXRjBPZ3dnMXpoek9Q?=
 =?utf-8?B?QXRDVTdjSWZGREJXeEQxUUlHMlhWa0FDTFdtMk9KZmVLSms1eGRNT3M4SWJo?=
 =?utf-8?B?SENJMHJ4L2M2aE9Jd05IajE3ODNQYXJPK1cvQmNaNmlzNmhXVjkxK2h0R0xl?=
 =?utf-8?B?ZHJnL2NkRHlHT2c2cHhEUUk4RnRTbXlHRXl2aE1DVFBRTWR2WG9WQzNWVmpT?=
 =?utf-8?B?OUNSb2d3bTg0cCtTaGFJSXhHYkdiK0tLVGpKcXpIcW5TRG00M3ArZ0RXbmcr?=
 =?utf-8?B?U3Q2MXcxYnVlL1lKTlpSUm53MlN5T2wydkhEcGxHM3duQ2E0VUkzS2Q4bVFj?=
 =?utf-8?B?MFFXTUZLL1NKb0pqNFhaTjhjOTZXYlhBOXBSUkZvWmVkTmhyaFRxdEtab1VX?=
 =?utf-8?B?Q3ZkMm9lbzB4RWxUM0kzaURZQnB2cGNrcnNvK3BRdDlQTGJXR3AydlRrcmdv?=
 =?utf-8?B?elFhdVV6Rjl2dG1OaFBNYU1LQ2dib3hBbEZoV2RLajhKdzZlY0szL05XS0JF?=
 =?utf-8?B?KytiZTdDYU5LWE5yZUVrVUx5OXl1QVVqSGxrdjRXaG9BY3NGdFVXY3BQc1dR?=
 =?utf-8?B?V2Jkd25mQzcxMVhJbWJscFRoT25vNVRjbkk1V2JFK1JvUkNWdSt4R0RhdkdQ?=
 =?utf-8?B?Q0dxNmpWS2RXUmpkR0Nka1Y0bS9iTitZZmlVZE5FT2pMTTZ4c1g0cnBFZFJF?=
 =?utf-8?B?bXBja1NLV28vT2Y1M2dwMzgvd3p4WVUwOEl1Q1ByM29HUzhqTmtCV1Z5V2sy?=
 =?utf-8?B?UVIwVXBpTlJscWxRMk5yMGhpZ1ZhbXVGczBMT21GcFZ2KzRXR29VZVIrekR5?=
 =?utf-8?B?cW9yMzY3WXBVNm5zQnFET09TMkpvbnBKeXQ5SktwRmhBZnJvYXFiRkluYmNB?=
 =?utf-8?B?RFBtNHVXcEw3b3Z2M2E2QUVESG9pMUkvYWlMaFpnN2tpTHJXSHU0YzBHa2NW?=
 =?utf-8?B?ajNXSHBydmZGbHV6blREVmU4N2tBWTgrYitiaFVjM0xmNCt0djNOb1craThm?=
 =?utf-8?B?SXN4aTlzTmJ6U081b3lMU1doM3h1ZFVsbjZIS1JxTTdTZ1RsWXFuRC9rTTJQ?=
 =?utf-8?B?cnJjUE1LQzVha3lDcUtnSnJLbk1qNG93SzFHZWNLLy9WUndSMlBGS1dhVU1F?=
 =?utf-8?B?UGtzZ3BqSUNzbERnaXRhcGhXZnpIV2RqSXk2Y3ZXS0RiYXFWV0hLT2RrRHRt?=
 =?utf-8?B?SEhQTXc1dzEza1VqbmpmeUdud3pBaVd5czdWWVBmZnNiMEMxOEU1Y1RUTVln?=
 =?utf-8?B?V29ydXErU3FObnE4cmJmTCt4bGo0M043L2hUekl2Q1lWVXk0WmRscnNETHVP?=
 =?utf-8?B?WWZ3TzYrc2VqSklUYy9XZTJuaUQrNFRjVTBuYzQwQkw0WjBoYnhHRm14ZnZU?=
 =?utf-8?B?dXhrakhiS3RjaEdsOFVSZ1dNVUh3TTRDdnNFeDNTeDdqV2NQeUZxaUJyU2hw?=
 =?utf-8?B?MzI0dStEcjRhNXJvUVZiR2FTWUJVNlQrTENrQzhuRWtqdzZWSCtGL3VXVGJw?=
 =?utf-8?B?ODFDRTVoRDl5Q1Y1UFg1OUNhamplSUgzQVMyYUF3K0JmQm41ZFhsZmtUZ0l2?=
 =?utf-8?B?TGpJOVU0R3drSHlvNW9HaUV6czArbk5wMFdKYWE4TS9BTE5WWEJCOC9kcVlE?=
 =?utf-8?B?d01rcnJocUEvUDJqalNhNmJNaW9yK0lqeHdyME1QaFp5Y2lLcGxIbVhzdWlx?=
 =?utf-8?B?ekdYMGdjclA4VDJPZHZGa1ZYS29wVkZrRjQ3LzdsT2gxM2F4Qm8yZkQ2VTIv?=
 =?utf-8?B?UDNIMW42cnY5QzhrWkp3QmFCU3pHeThSMmU3Q0Z1a3IrTUJlSytjOWVZeHoz?=
 =?utf-8?B?SVRFbnJhTXRQQUJnaUQya29nS2QvYmVBQytpMTJqdEUwYUpxU3RydnB2K2pS?=
 =?utf-8?B?Mms1bXpCa0E5YTgwTFZjQmFubFptTDUvcWxLWUIrczBUeEFBZnBEYm41eEpL?=
 =?utf-8?B?bWVQbnViZEp0clBhaGxnNTBGdU5CRVYwYkpFNEIzMWpEMnhNdlRmcW9tc3A0?=
 =?utf-8?B?RURLdDFwOWkxYmRubVdINjBISU81M3pkV1NzR3ZNVDJHTS9LeWRtT1VXMTRN?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b589239e-3501-4de0-3600-08dc2d9cb579
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 20:37:06.3511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sO3f9dlMhYff1nfYKZIxIUnW10k1X0HDit6EUsXmUMnVdjxiTQNVQnNCc84mH61Fn0H5VaYYacQDN8WKfBdCcMfIb6QJCiD5hlZxl8+/0Lg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707943036; x=1739479036;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ELy/OaeQAOQ/6P5DXFjulxe3/tkjMcSx4nMhLx7tcuw=;
 b=PoWUfJV7fdM9PHTTEsOXY1glc2S2nxHJ55ng6focaomWvPf0UiQGVgym
 NwfTpsFRnsiYeq4nmBV3o488TkZ+tVG8YwzAp3WTBNE54s2JSYuPFUOTc
 aixQ91uykf56zW0/2qrnH+pkH2+suAS+khJ94UL9Mr0+HY5XGIFiJZDo4
 h8Fy1nIGYUSBi2iHHHeTSla/MgUjtyYN/XBvyE15/oImhKyLgziE76UD9
 Cs4tEsBZp7XLm83v+atgAxmz8vsF/5uSeOL8sol4vpWtVHB1bzWzZ8WUY
 52WFFfEMmj0hTKKXx76lkTHpUhgzjC4BMHwSifd8CbVqLh/14MKbDRcKH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PoWUfJV7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] igb: extend PTP timestamp
 adjustments to i211
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/13/2024 3:54 AM, Oleksij Rempel wrote:
> The i211 requires the same PTP timestamp adjustments as the i210,
> according to its datasheet. To ensure consistent timestamping across
> different platforms, this change extends the existing adjustments to
> include the i211.
> 
> The adjustment result are tested and comparable for i210 and i211 based
> systems.
> 
> Fixes: 3f544d2a4d5c ("igb: adjust PTP timestamps for Tx/Rx latency")
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
