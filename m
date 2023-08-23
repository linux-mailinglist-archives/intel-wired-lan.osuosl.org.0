Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49129785F43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05F5B612E8;
	Wed, 23 Aug 2023 18:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05F5B612E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814200;
	bh=wRwmynGVGyEJTDlfDq1+LB6zyI5VD/aNExZR5Els7OE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XHUxiLHoaNTYhToF/7nj+/g67ymBGYCs3U46i5EZcsuUWW/FoQFfE7deWtmpXas+Q
	 bFHXobQTqzW7W4nQWT9VDns7GoI9sP/DoIXo92R75Z+2U2Fc556zcWofsJZDQAxi0W
	 GNSgzzkhLGR4rTfojKrKworKAPLKe2ZXwi/Zs4EJeltUQM25U6sMTzgLKK48XvJrEB
	 JOQp3vpKIzmmy/D++KdkEP9rhMOdtyWtyuAwUqLifblwQA57qc6Bjej4Pfv4Nv2W7d
	 QmOkviAcDNsRf1Zqge/pEaThQ1n6CGXKLV6ZByZnoU+EhMQ9a5KdG5GObO9tUJjC/f
	 U/TfC3ImiMqwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sFXY5n4gubEl; Wed, 23 Aug 2023 18:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB54260E00;
	Wed, 23 Aug 2023 18:09:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB54260E00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 502A31BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3215C417B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:09:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3215C417B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AXCDEDjPM6G for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 18:09:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9BFC141750
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 18:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BFC141750
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364411878"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364411878"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713667130"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713667130"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 11:09:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:09:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:09:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:09:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViUOPe56EMUxaPaTiXtvHoLIxE/uEHv5Yyb9sZPXDmr0UuRJemz6DKrF/UOoDMIwGgp2BljQKdmM0+6Gdud+VzQroS/ThQGbIQKGK8QRNg1HLbX2k+4RnWWum4OqVeXCLG7iICGUNQLLG1mrLOkHlRFEhtsVi1p/ZiNjphYjpbL0xTz1svGJaGds3dF6Yp/e/6nTeXlWt7hfPec4bkfr8KhUa7/Nl//fXMV4U1Uf9wZnxlq4Y5DubMv3ySQem6MrP/IVhQ4ztuqKHMflfl9So2NkUiyivDxeCfejnOLvCRntlnHDLjUVsVwFHCDAiJYrFasmDSWHv6tyClsi096s7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vpkvIfF+lb89LM4pvRbxzspLwCgQe/yPU0idqIwEmmg=;
 b=Q1wYTJrtXk8/nV7X+Y/n6z8LOIJjFu/lLejLUBs6oDkFKlkPr6wFwNm2/29tkz1dJsicQxFoJK+L6NgAi2j7gbvs9w9RHTreXIaYO7HyVvmrJ+TuddMK/o9eFiMRZh8dO1QnY/1j5eHHGiFwBLWd9m8eRQcZpnNRiVGSBe5VmXVYViOEPW23waCQTTS6D/GtDTNaSLSRs7yKd3+KHt3PSWChRdV8BJzYfg7nvpR4obiCmNFzGHJ2rghtU9Xid49WPyR0KYu3E2cyEPYnzkj66QqUzbvPyfPXMpO+4f/E5ZVXlUbR5rkIsUFdX4ilrgJ6hvePV5PsKluq91Pb977YIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM6PR11MB4580.namprd11.prod.outlook.com (2603:10b6:5:2af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 18:09:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 18:09:28 +0000
Message-ID: <59906319-6171-da5b-ca78-4ab423b1cc92@intel.com>
Date: Wed, 23 Aug 2023 11:09:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Pawel Chmielewski <pawel.chmielewski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
 <e6e508a7-3cbc-4568-a1f5-c13b5377f77e@lunn.ch>
 <e676df0e-b736-069c-77c4-ae58ad1e24f8@intel.com> <ZOZISCYNWEKqBotb@baltimore>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZOZISCYNWEKqBotb@baltimore>
X-ClientProxiedBy: MW4PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:303:8e::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM6PR11MB4580:EE_
X-MS-Office365-Filtering-Correlation-Id: d5a11310-cd53-45c9-693f-08dba40417a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ynJZa+8xzeBNEktVYlCRTSmg3IFx1DfBh4TVIOLKpFs1QD5vX0U0lRkX/9NKQHLXA/Y6HXBpegIlaavv2EvzKV4vgkvBhUxcWu9v+O9AuJREZQ+yf//dy6mJe4z8cLEEcTV7shnSx1xnOQJXFHDE+z+VeJLQuQe51UEiJt6X3BJ6ZwKknywMeBZ95iW9+1pcSBT4ObJraUqcfz2oiYob8zDg7VCIuhyTe01y4FQiXoSWAzXTGFm7O0U/0xOfTOCOyTID4S0+MMs3KLREuXJg5F+Mb56rLP4wboAuJNW1xLGa11qznfIv2z26scm+lr0WzpTRrYhU0c4B/Is1j1x9mDegn4Ap17bVo3aEBRetfgbmdXdVgiY75NwoEC3gzNugzZ/Sq/WCNDZoYyVHa1eO2s1FVe0bWalLDijpfVsvo10uzOSde7vkjUh9jZoEcfMCsygarcig5ggrHQpX4jAse+7QXEZiXRiT0P9rqn//E+89rJS3qoAtn3Q7z+e5+xuLrMMod+MXcDPBmsPq1qSmuC+Bo8k5MKdtKnilYju51ytXj/Wt1U8J2KKlumgRukKHGxPH5W7+GaeD1lRbu+YpjEN4QKPLTues4U7YeqcD9mj5CpoFJEpxVIi7x7cW9o8o
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(39860400002)(346002)(366004)(451199024)(186009)(1800799009)(31696002)(86362001)(36756003)(82960400001)(5660300002)(26005)(2616005)(8936002)(8676002)(4326008)(2906002)(83380400001)(478600001)(966005)(6506007)(6486002)(66946007)(53546011)(316002)(66476007)(6636002)(41300700001)(6512007)(66556008)(31686004)(110136005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFUxQkZjQ2hTQ1JOWFdmL3ZnVGZBemJmY3IzV1ExcVJkc0N0ekdtQWpXZjFp?=
 =?utf-8?B?YUxMMDN6WStVTkdLZGlOVzNoYmRQUkFIaHllcGhEdURWSkdUS3hDUFMxTlRL?=
 =?utf-8?B?MkJQTE8xYWJVTWRWSHptY0F2a1BiaE5CQ2oxN0tvU05YZVBXem5MRkxFSTRi?=
 =?utf-8?B?ZmV4MUROY0k2Q00zeDA2ZFNXVmwxSzBIUWxyVEVTcHJZL2xsbGxzOUd2VEJI?=
 =?utf-8?B?d2k5bmIwcG5SZStVemdSU2JIZFY1Wi9neUhjdG1CZ0JnOG1WMGhxblhsQkln?=
 =?utf-8?B?SThJQW4yeSt3R3ptTTlyQlZ2VmpYTlVPTngrMlVSNHVJdFFQdEpueW5QMkZJ?=
 =?utf-8?B?Z2RUL3ZmdzdRelN1VFdNZ2VtdTdmbWF0ZllaVzZGdFRoc0xidklrQWhSL0dy?=
 =?utf-8?B?Q3pldm9nbm1ZY20zUnlncURpd0lBSG1qQXpsRWlyRDV1SnBYZit5TFpBZ1Jv?=
 =?utf-8?B?cWdnUHBRWU9ZRzBiWXp5R2xSYXR4aWtJT1VtRWc1Qjg2Tk5uV2lnMUxtSTBE?=
 =?utf-8?B?ODU1T1I5Nk81N3VYazlsY1dES0dBNlI4QXBuS1l3bko3eDFqbW1DZTdVVkZ4?=
 =?utf-8?B?TGFCb1crbUhOTUxWcVdaeWZHVVJpM0VMTmlUU1hlWVJOYW1sdW1QRnRpSGFE?=
 =?utf-8?B?UUlSd1J5dmkyRk44VnBVUWMzSU0rZlg2Y1lTbWlNYkJoT1NITFJBVG5wU1Yy?=
 =?utf-8?B?T0tOajdtTWRqY3AzcWtHYmpwcWtrd3Y0Q1kzWTRTcFkyR3VVaWcwdytaKzlB?=
 =?utf-8?B?RnFMS1hoK3cycDlUdENydkFoNHdmTlBQbXE2R01NdU81Z3dmVFk0K0RleHpl?=
 =?utf-8?B?RmsrRHVVWisvRUhHQkhRNTh3RTMzSG1tR0VTSEYxa3lSVHk5ck15bzA2S1cz?=
 =?utf-8?B?SDR3S0k2TDBsM2k3SnlwUStGdWVuc3E3R2dTWnpDWS9DRXJTWDZMUlI0MUo3?=
 =?utf-8?B?K0c0NkpaOWRZUUNLYVJqWDB1ZDhDakxuUTZHVVJXMU5KYWNnUFFXN3hrTWFE?=
 =?utf-8?B?Zm0yb3BnZFJLWjNnNGRQRmlubG9oVG9oaXFCZWlDVjZwdFYwRWJuWEpsRGZG?=
 =?utf-8?B?YzBNZm12eHhxZDV5Tk4ranFzRVh0SVBMM0lLQ0ZqOENjT2cxYUREY0VVWEs4?=
 =?utf-8?B?aGUyY3Nlb0JZZCtYU3ZZQTREZnV6VUk3L1ZnRFpNWVcvTGZVaUdkVFlTdVN1?=
 =?utf-8?B?WmJ2MjFZdys0ZWxxQ3hCd0kwWXdJMUlsYUtkVWNoT3FVZzJTK2FXaXdaU3BB?=
 =?utf-8?B?c1d0Q05XNHZlRHdoZ2xScE1sQVl6Ukoxd0gxR2lRaERGbk1MS2JycmVORWMz?=
 =?utf-8?B?U0NJU2htQW40c3BneFdmajVsdGc3OXdCdHVXSHI3SFB4WGE3Q1B4OG1BZi9J?=
 =?utf-8?B?d0t3OXI1Y2tEWHcwbDBCdkNYZllGMk84L3NFQUEwS0tkVHp4UTdURXFBVi8y?=
 =?utf-8?B?QXk5ZTgrS0JKSHZnZlpHVlF3K3Z4THFqSi9iQ01IeUNCSHNOVllUMWk1cDVj?=
 =?utf-8?B?N2VzaFFPT3NtcFRmTzQzZng0bWx3VWR0NTRKNEhjSTBTa3N5K3pXc1p3VUxX?=
 =?utf-8?B?a0YrTTdRU2s3WFljVWdVTENxWmw3TjJ6ajlOWGUyQklmcUhGdlpNOXcvQmow?=
 =?utf-8?B?NE54Wi9VdXd3aE1sNGlBbWJKM09kdExHZjFmb0dZUlRvREtva1d5WVhvZGpj?=
 =?utf-8?B?OHlhbGc1M1RaN28rR20rTCtjQnlmYmZkMWJ4Znc4d1YvOUpXcWdzTVFZeGhs?=
 =?utf-8?B?RlhSR3AwaWdCYTl0d1RvQnR3WllTMEZRYldkdCtSOEMxcGNkd3ZCM0JHUmNi?=
 =?utf-8?B?TjlZb2paSVJ1TVZOK2xBZExhdE5aVlNESThkUWl3TDRlTDBKL1FDYWlydGpH?=
 =?utf-8?B?ZTFiYTc1YTZ0ekJ2K0dpWlpOZWpGZERpZDZYNDU5S2swZTQwVGp4Rk5YUzJK?=
 =?utf-8?B?WlprUEFmOElrMEp3VktySGFmTVdaQW5yQ1BUL1B2Y3dUc2xrZXRtenp5bWJR?=
 =?utf-8?B?S0FoZHpidDhMMnlGOXVWVXpTdlpjQkE4dzVRZEVhYmNaYTBubDM2Y3k0dTFM?=
 =?utf-8?B?bUIzMWxmVTJBVEJrV2xFelB6K2xpSFZLQkdXeVd6N2E4S1QzcnoyYm1IcDdJ?=
 =?utf-8?B?ckNla3krQmkrSUNxMDJoTDBiNXRRc2NtN20xVjFoTXRqeitWNDd4VFBNQTMw?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5a11310-cd53-45c9-693f-08dba40417a1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:09:28.7820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WnU74eihzILbr23o8nhqxpLwWskMElaBeh6AGyT4WdHC+wMy8nssLjEiWwJzKGO1H532yi5eAdwLG2HRtJ9IZ7mhMzR8Z2+8RhbPyr50/9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814192; x=1724350192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ic2+Ht6NCuiyjECZERZdQkAUg5/c/4pBjcuCAYE6WZM=;
 b=KZalS/0B8hvyCp1Ps/lY+2GcfgJjelLt2BbPwum+BrdDRdIwpwVnK7U4
 /BwR/PhpnNke3HmquVuzY+YLRJZcNVfS81gahcDMN0vjabKv91Aq/PyAN
 CGy83EtBgv24tTD9RyUGtfvkCDpzX254Gdzo2qwfBMtJDE8trHNVOlHcX
 pu0i7hA/keUbHkqFDm5P6ztkz6nnkqUiWVc9XIIA+qsDgNBQysEVMJOFH
 24wpLu1KbTR4BSIBLchnK7cpzirSb3WxbfQFnYyF5A8ICpYJoY8G08NwK
 X9NdqYQevSOq4JocAiPS73pAealCgnnSy2e0DC3xpTwmCfzC0AVmop4v4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KZalS/0B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: aelior@marvell.com, Andrew Lunn <andrew@lunn.ch>,
 intel-wired-lan@lists.osuosl.org, manishc@marvell.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/23/2023 10:56 AM, Pawel Chmielewski wrote:
> On Sun, Aug 20, 2023 at 12:20:43PM -0700, Greenwalt, Paul wrote:
>>
>>
>> On 8/20/2023 11:54 AM, Andrew Lunn wrote:
>>> On Sat, Aug 19, 2023 at 02:39:41AM -0700, Paul Greenwalt wrote:
>>>> The need to map Ethtool forced speeds to  Ethtool supported link modes is
>>>> common among drivers. To support this move the supported link modes maps
>>>> implementation from the qede driver. This is an efficient solution
>>>> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
>>>> maps on module init") for qede driver.
>>>>
>>>> ethtool_forced_speed_maps_init() should be called during driver init
>>>> with an array of struct ethtool_forced_speed_map to populate the
>>>> mapping. The macro ETHTOOL_FORCED_SPEED_MAP is a helper to initialized
>>>> the struct ethtool_forced_speed_map.
>>>
>>> Is there any way to reuse this table:
>>>
>>> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/phy-core.c#L161
>>>
>>> Seems silly to have multiple tables if this one can be made to work.
>>> It is also used a lot more than anything you will add, which has just
>>> two users so far, so problems with it a likely to be noticed faster.
>>>
>>> 	Andrew
>>
>> Yes, we'll can look into that.
> 
> I think it would be better to leave the maps in the code of respective drivers, as they are too much hardware related. 
> Even for a single speed, the sets of supported link modes may vary between the devices.
> 

Isn't that what the per-driver bitwise AND is doing after the fact?
That's how qede worked: it converted the mapping from speed and then
combined it with some device support maps to avoid allowing speeds which
weren't supported..

it would be nice to reuse the same mapping that is common everywhere. I
suspect the PHY code already has some mechanism to support device
specific since not all PHYs support all link modes either....
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
