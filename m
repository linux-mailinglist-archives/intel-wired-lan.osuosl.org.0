Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F52A797C8B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 21:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5977408BE;
	Thu,  7 Sep 2023 19:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5977408BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694113757;
	bh=VwW5t+an/YkUAR0w9YSNQkTe5/pR2Nn8TvAQKlXzBlk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mvxGCN4MDoegn03bebFJHu7svBsm3lRKTwXoVRBlr0sJkJA21XvGJ5REvzZU44LnY
	 J4+v7EoHbgsJX1Hk1jGOV6SSPwUGZNI6Cih2Qx5s5FmkLNdajDDcO089mYNzi4m7xP
	 tOt0m96GthqMrkgApFwoEt3neUM/M/m0Ag8f84AbJDCHoC4IX65l0OT+RwxvlIL4co
	 kfs/tqAOecV8yLTVaTMFhvqI3ZxAfND6za44CF4LhOzjm6o+O20cHWdreBAkZRa0Cc
	 px3rx9xGlLyGAql0h3vsmEgVgVWsXF9kYYM5qCn5jJCleQ5acZZ9sVvTRa8sf9ex0d
	 Tdjy8JH4Cdtnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRYy1F6BJ_sd; Thu,  7 Sep 2023 19:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5565C408D4;
	Thu,  7 Sep 2023 19:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5565C408D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AD3A1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FDC94002B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FDC94002B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id guYBif6YiSI0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 19:09:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4908D40004
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4908D40004
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="377358349"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="377358349"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 12:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="857003028"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="857003028"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 12:08:26 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 12:08:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 12:08:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 12:08:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i+MT1Ew6pziNWMHGvOUsDueSgQzVaxRUCG8LeeTYod1nxbn9CKoMgvNhKukKjRmjiz11Hb+adxnGo6BKbtmthD4Bw7nlKaBgvWdoc1ioK1uER1Wy0uxVXezQJQH4dY5di1iqryrR+Cq7f0sPiIFNCWt9k1jnfREz/IuuRTOO55N+GIW3sAGa5I0SE81yVn6vZmAqdh6AvmuDnC6dXHwGdmWZUrCjpLjFVHsMmNfTWtu1Hl0r6qs7x8+K9XgJ3cB9kuBGlJngxwLoP2txXqSEuFeGSErqWwhn3iybreQHVQglfGziVrAbvqnIIQg0riIhTq2A1XfAFQCzSbbDCV1YEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CT9VFKfdMtmUxmU1Cjg9VYcHO2RqHNaDkGK2iDBnF7E=;
 b=CtotNRZrDU1A9tcksaTj48RlAmpyQ06n5f0CJLUGjvNemoeoKxgmjEnkqRuHhGIDu+sPFWP3610s7ye8sKJT9mH8DvcR6V68pOZmbgahOiy0JIX3B0q2pvPyk87A4JP2Qii6pENQ7DFOp2yrLgf3CkJrT6khEh5dvEvo3tUtWCMLe2DZ4gC2OxK+z8bZBDxoJ+H4vIfMY1yJsrzCEu2An4wUgsGfKNJgLVLk7BTuoSom9xIrz8gsgCjEIt7qsWXBMXI8m7dbqqC08CGHg38paE1uQT4S5FQS89zG4cncjnDhfLzjgiZG5AVoRW74rGlNtEs8sAVobyozrxbFBS1E8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by PH7PR11MB8570.namprd11.prod.outlook.com (2603:10b6:510:2ff::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 19:08:21 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::6add:b67d:5d6c:6439%5]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 19:08:21 +0000
Message-ID: <9d236687-6161-3e1b-f73f-ed9358e47577@intel.com>
Date: Thu, 7 Sep 2023 14:08:15 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Junfeng Guo <junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20230905153734.18b9bc84@kernel.org>
X-ClientProxiedBy: BYAPR01CA0031.prod.exchangelabs.com (2603:10b6:a02:80::44)
 To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|PH7PR11MB8570:EE_
X-MS-Office365-Filtering-Correlation-Id: 017aaefd-5a0a-4390-5804-08dbafd5cd43
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eCjnBClr6G67+n3mOMS3hxMA64w+YLZmghDuEqeEqsgVxlrXTz32sngB+3+/bUkUYyZzWsC+IXRdR7jELIyMSmEx3sVYHzNgWvRbTBj9q3ifGnBta/wfDtwm8GK6vvaa6LjIj+uG5z3x+VhKjExYgYTvWWDQDqY1rnsyzOCmWS498wNWlv6iiHKzzlXFKeAAybmTnE8mrhr8GCisl4nhlprjvoWibP9T5qvv16phLW/d123Zd97FwwSoW9TWZtGTfTgqEHMuL8WQdoqn333kKyZdKxYj2PJl8RCDiwKhP8bNM2hZRJlzkKQWY0LEeeHiyVZ9hdn211nWeJs/bfzT1pSnB36gMmKO217HMx+QNFHuEEle0NgX2l5CPWQk03NH5Uvg2qA5bFtXadrWKjWk7DXI+g20uqReJZ+cardwKZy3Ck0g9G7B1847OTCW5kGnLEEPgoWc8HC/vp5uFkeMCWcaWmiERbUgPh0TQ7MnbitPlxbwJc6+XXjV9r+SG4T5T9BbOzYupjfnf9hBFFfECx4eIV/3C/BZKKiw1M/scbTmJBMj9tWWtMjtp2DhUxt/p6pybjKKFLvAPbO6H5jJ1sR+tfLqPB2gBYJ1OL7vnouCF9x4T0dc2riYUGCZ7G2abwdYamJ384YJJg797In0nQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(396003)(136003)(366004)(1800799009)(451199024)(186009)(8676002)(4326008)(8936002)(83380400001)(966005)(478600001)(66476007)(66946007)(66556008)(6636002)(110136005)(53546011)(6486002)(6512007)(26005)(6506007)(6666004)(41300700001)(316002)(2906002)(5660300002)(38100700002)(82960400001)(2616005)(86362001)(31696002)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czdSUEtqQlVCNHZsNW95ekVTcmx4SFp2N3RDS2FFbmZMRWd4Q0pabUR3cVJw?=
 =?utf-8?B?ZVVNTmFrYk1xU2o5dURoUFUyRFNHbTJjL3lPeU1wL1RqY05wR1pqbEVqV1Bt?=
 =?utf-8?B?dkVTQlR1cHZsbnRDK0NuZ1lhZVpMRzFKNnhLYm9mbVZnUnlpWVNUYVdtZTZT?=
 =?utf-8?B?NWlXQlJQaGFCN3FvcmgrNDNSTTlHclFpdW9KVTJDRzRJOVlMbGdicWRsbXZJ?=
 =?utf-8?B?Wlo2ejdMZXY5WHdiYVpZYTZTbThlTEd4aTl6Nm5ZaE5wYjRzREVML3ZJdXlu?=
 =?utf-8?B?ZU1QSmxTVTN6L0tLc3BtUUk5NmR1dXZYb25idjJYYU15eUJIT0w3bXBhNUpq?=
 =?utf-8?B?eWVJdmxLeTVxbnI4aFNkSzhTTlRBanZnUlRZVWdlRTBHS0dPb2dUSjh4a3hF?=
 =?utf-8?B?clRZZmRiVWNCZ2kxNWc2WUZ0VEN2TW5WY3Y3SVRmNVorQk03QXE1MVBJakx5?=
 =?utf-8?B?TnFldndwcG0xVjVvL2tsTjZIT2lnUERFcDUraldHRUhacjBYMmhrQmNsVERQ?=
 =?utf-8?B?dnJtZHAzUDIrRnNTazFhdEdaeldBaHJqTlBFNWhmcCtoaU1MV1NIbXpLOE9q?=
 =?utf-8?B?ZHFMWjY3bkhDMzNTbW1CL2dNeVp4eE9yQSsycmxLSjhiOWd3NlA1SHY2NW16?=
 =?utf-8?B?U3R2L0ZwOGU3UEZXaSt5empkaWI3Y3dtaTFjQTBENS9ISytxTmlVUmFYOFdV?=
 =?utf-8?B?NE1UbllGTC92SXpUTVZaWU1DbE92Mkk0SFNEZ2ZtRG9nV3gzK1M0SGhXMzYw?=
 =?utf-8?B?YTEvVXpFaTdhejlVUVMxZnZxbVBudmphRFRRTEVxanhkWk9IZHhFbEFtcWw1?=
 =?utf-8?B?RHZkcjIzMTVsUlpZRVFtc2FZdWJFUTI4aWpudU43aWh4cDJoaVl5VDRZMzYv?=
 =?utf-8?B?S24zWE5VbVF0a29iVURXVkk1dnZDYldKMUNpdVRFUXU4bXBZRmd0Q2poN3F6?=
 =?utf-8?B?MCswOHMyV01NUS9Oc2JxOGYrcnovR2lDTHFXeWQ3RXhwWkVDa0Jqa1NFT0Fh?=
 =?utf-8?B?M1grVEppSkxURnBWbHBDcVB6OXNTL0hDeHdxWktOUjA4c3ZIUXJDazJvUjJm?=
 =?utf-8?B?a1ozVG1XK3QzNVdkSzVxeXRLR3lQeEM3NzFGbG5Na1RrcDY3cGhlVE1rZHN1?=
 =?utf-8?B?bXBIZXUvakhCbEJiQVJQUzdRR0hTczZLRVhXSUlrZHBaRUdtZlNhYXFsaDdp?=
 =?utf-8?B?REZEek9Sc0J1TEM5MWM1L1IxRTdsdi9GYVJpNHJOaW01cElSWXc3SFhQNDZl?=
 =?utf-8?B?RGhjZlcwWGZnaGpsVVZtMVhTRzcrV0JkVGtFVXFhR2tvWUplUi9ac2dSL3Fk?=
 =?utf-8?B?ZTFkL0lQRDJCdXVOWVljMGM4Rk9LVC9YOGtmSndRalBzRkdkWlc4N3VVZE5S?=
 =?utf-8?B?eUhNL2FDbFBNRmYzRDZPc2dOTkdTcjhDeThzUlhmUEJZT29xRENUR2wvbyt2?=
 =?utf-8?B?RENaL09DZEFZanJQczNMNmVpQVBxM2Q4NXQ1N1JGQ0RwN3RyZzcweEIwRGRH?=
 =?utf-8?B?a3F6RDZmZkxtQmFrdmJIV1M0QnJsejNpdjhaU2JZeFlOUnZ5dHBmN254MTZP?=
 =?utf-8?B?QnlEbkowT2g1VVhLcjBNUGRWcm5TVFRYOWNQU25NVW42MDJpcllRQlJpOXU1?=
 =?utf-8?B?b2JrVTlmVDl5OUVjdWJKNSs4YURrUFhqRDdBakF2b2ZLUDkyeUh2eUxRc1gw?=
 =?utf-8?B?ODlrdHNwRk1sV3U1OFU4cFlpRmVmZW1PdC94cjRkZlJEeU9ZQ1NUZXYwSm95?=
 =?utf-8?B?ekVJSVVqemNOVm5reWJUbE9IM09sMjJxUTVwejA0amoxMTFoaWJyZHo4VDVZ?=
 =?utf-8?B?ME4vMmVwMDZqUVJzVWRlTVQ1QWdsV3A3SnJ3L1RqamJiWGRueGZwd1B3ZlQr?=
 =?utf-8?B?eHdQNjh1R0tPRkpOWm9FUGc2aFE5WXBBRlBGMGFzVmZybHRLK2NrSUkvelE5?=
 =?utf-8?B?SDJ2alRERGN5VkQ5SlBDSTc0M0dBYi9Ga2puUEx3dC9TVkVHeXovQlVCakFh?=
 =?utf-8?B?WFZ2ZGltaDg2aEJOVFI2WTZjY3UvcU9BclF0ZThTb2owSkhTcExldjhoZWZG?=
 =?utf-8?B?TjBkZnlKSG9uWWpiVy9aMnNqakVObkpvUHVhMHZPeXhnRmU5cGlTZ0J3bTdt?=
 =?utf-8?B?K0RlZ2IyK0lkSkdjWVRrUzcyVzFmZjFwbEZRQ3F4b1JTQmVyRTZMdGk3Tkww?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 017aaefd-5a0a-4390-5804-08dbafd5cd43
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 19:08:21.1378 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w4F7B5bRS9QIthNATzYpOEx05To+SX44yGX71XApXkJD3I60qIdRjk5Cjhh0F6wb5yrhmFjbujrDny1pnGYCu8/ADoU5yNrrJ8lnxenZUOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694113749; x=1725649749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q8vGXKh92yYZawZrfgQSKwAzlxDGE8gMITSY7PK3Ntk=;
 b=bQecxrI80PoKf/7e2hqJ9aQ12oIZMV5iDTy2RiU6aysdvgBzk2ro4joo
 HB7sTgil+OEowDNM5/WiycjAcbc9n1p2zZxrVG1KB2h3GPywhJQGBLNoO
 MFl7SaueZlQh5Gdn18xgc440uqAxaTnZONVSMHsnJTGv/6L4WLgZJJfSq
 DCqTcdGEtnl3St8oCvKHhUWsbZ9vKqB1bOH6VbmWXNKFWnqKvw5DRbran
 T5dGiaPsaHeb8HlFVUQTgc5BDb9sNUR1FccFnwPO2qW1IjKJKuus8n7Pe
 LGkfo7gESfzoRO2X8kOu6T9/v8klxsYP2VMAioQt9SZLgAS2HSe7k69kK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bQecxrI8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/5/2023 5:37 PM, Jakub Kicinski wrote:
> On Mon,  4 Sep 2023 10:14:40 +0800 Junfeng Guo wrote:
>> Current software architecture for flow filtering offloading limited
>> the capability of Intel Ethernet 800 Series Dynamic Device
>> Personalization (DDP) Package. The flow filtering offloading in the
>> driver is enabled based on the naming parsers, each flow pattern is
>> represented by a protocol header stack. And there are multiple layers
>> (e.g., virtchnl) to maintain their own enum/macro/structure
>> to represent a protocol header (IP, TCP, UDP ...), thus the extra
>> parsers to verify if a pattern is supported by hardware or not as
>> well as the extra converters that to translate represents between
>> different layers. Every time a new protocol/field is requested to be
>> supported, the corresponding logic for the parsers and the converters
>> needs to be modified accordingly. Thus, huge & redundant efforts are
>> required to support the increasing flow filtering offloading features,
>> especially for the tunnel types flow filtering.
> 
> Are you talking about problems internal to ICE or the flower interface?

This is specific to the ice driver implementation. A package called 
Dynamic device personalization(DDP) is loaded by the driver during probe 
time to configure the HW pipeline.
Today, the driver has a non-scalable implementation that needs to be 
changed whenever the DDP package extends the capabilities supported by 
our HW pipeline. We will re-word the problem statement in the next revision.

> 
>> This patch set provides a way for applications to send down training
>> packets & masks (in binary) to the driver. Then these binary data
>> would be used by the driver to generate certain data that are needed
>> to create a filter rule in the filtering stage of switch/RSS/FDIR.
> 
> What's the API for the user? I see a whole bunch of functions added here
> which never get called.

This link shows an early version of a user of this patch series
	https://lore.kernel.org/intel-wired-lan/20230818064703.154183-1-junfeng.guo@intel.com/

This API is planned to be exposed to VF drivers via virtchnl interface 
to pass raw training packets and masks. The VF using this API can only 
steer RX traffic directed that VF to its own queues.

> 
>> Note that the impact of a malicious rule in the raw packet filter is
>> limited to performance rather than functionality. It may affect the
>> performance of the workload, similar to other limitations in FDIR/RSS
>> on AVF. For example, there is no resource boundary for VF FDIR/RSS
>> rules, so one malicious VF could potentially make other VFs
>> inefficient in offloading.
>>
>> The parser library is expected to include boundary checks to prevent
>> critical errors such as infinite loops or segmentation faults.
>> However, only implementing and validating the parser emulator in a
>> sandbox environment (like ebpf) presents a challenge.
>>
>> The idea is to make the driver be able to learn from the DDP package
>> directly to understand how the hardware parser works (i.e., the
>> Parser Library), so that it can process on the raw training packet
>> (in binary) directly and create the filter rule accordingly.
> 
> No idea what this means in terms of the larger networking stack.

I think the usage of 'parser library' is misleading. This is not a 
generic library, but specific to ice and enables the driver to learn the 
hw parser capabilities from the DDP package that is downloaded to HW. 
This information along with the raw packet/mask is used to figure out 
all the metadata required to add a filter rule.

> 
>> Based on this Parser Library, the raw flow filtering of
>> switch/RSS/FDIR could be enabled to allow new flow filtering
>> offloading features to be supported without any driver changes (only
>> need to update the DDP package).
> 
> Sounds like you are talking about some vague "vision" rather than
> the code you're actually posting.
> 
> Given that you've posted 5 versions of this to netdev and got no
> notable comments, please don't CC netdev on the next version
> until you get some reviews inside Intel. Stuff like:
> 
> +#define ICE_ERR_NOT_IMPL		-1
> 
> should get caught by internal review.
> 
Will do more internal reviews before submitting the next revision.

- Sridhar & Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
