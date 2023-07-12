Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE956750185
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 10:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83AAB8348C;
	Wed, 12 Jul 2023 08:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83AAB8348C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689150636;
	bh=Oj02Vc2t+QyKh41Ym/G8yRWeqLXIBCCjFP/QFzPRKuk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jZ0fjb2mP5PgkYuXGxs9w+RCHBC9cWP1hNr2LVmNnjrEYmcypSv43V30Sk+bas84e
	 KR3+15S4KE/eKywH/N59XWoJwLX9+dncs6T992ogkvJy0sETPvXcwTuIek7bGXfbex
	 ALjTIdr99AHRUntlSXPAGy/ilaIFDnrPfpsvd6amNnoJsMO8lUiTTX9h+XjcwLSu1v
	 5pAQ69bkgtYSBpo0VqUN81IUU8yRqdYPd2Vf2QtWNk8wUovx9I1jWpHb2YiYcKWLTx
	 bwYV+H5AS3hXDdk/mRhMUPV5AlH3dhZuwScygXb3F0Spwt0NYVxasyEaQNZsw7gzOt
	 0Em4KoyP88TZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YP2ZAkPQ0wkj; Wed, 12 Jul 2023 08:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECFAF8345D;
	Wed, 12 Jul 2023 08:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECFAF8345D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD191BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 08:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F9C541B4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 08:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F9C541B4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJszD1hgtJ_i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 08:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B678E41A3A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B678E41A3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 08:30:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430962603"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430962603"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 01:30:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="786948977"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="786948977"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2023 01:30:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 01:30:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 01:30:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 01:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q7Kmo+lqrh6cT8ovhgbiqT0kEVWLqi7kDh6lOEL1x6yc2+Lx6zwwfPBx1HgaVpT8YgMBOlA7Zr1B2yoUMtRgmcUNElJxG6bp6/D+5Csp46ArQEnf2uCMvmqj/BIHu/WM/s5dSIjEms2yZ7QGjuWSYv1vpm5Vnq/sIuGRyigkzFJGJ1AgX5VVq2Cpvhi6YLr9GrNzWRyUtNLfhluoFFlNaTaLA5+DcRPA4cvwn4g/JBngCwhw5idzas0g/zdHShylRFVFWTpz/xblmrDJCAtyanNcTQeEdwUN4slECQ+EkZR/WqBFZ03pOhmoI53bX7ygdokJgfzq0X3qFkgGfgU+9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNz0D/33J2JXO5hAp74YFA6b9KbZcA7keJwYidTEmGI=;
 b=actJlm2L0SoqeuNKX7wzHfa3E/L0z0vH+TjQszVhcPOgcQwshXLQlPm02ISr1ukD42id+9GkgeFvOFrLtbv1Xt8Z+IXDx+86g11dsDJj2CUywZBTEh3PYjn+nispJn6CpK8XL5cHIfRaywn0dCxCj0Zwu5maI0blVFN+kMQnHBrV6+gaHyXm4s2msFMA8r2CcvvwvzITNQBnp30mFXBFhxC7fzOrzbGvwKyhTJMgs60gkFc5pfy2airh109L4UeFfSzhebUy1fS1CSFoXnaVdO7MrYWaqFqfsOaJhluzHLFXMFtJpWI008d/qNwkL5IhjyaUdY0aYWGyyhPjRdYy6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 08:30:23 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::5d87:c6ab:cb4c:7111]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::5d87:c6ab:cb4c:7111%7]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 08:30:23 +0000
Message-ID: <07aefe7a-67e4-e523-a2e0-c5e64db91db2@intel.com>
Date: Wed, 12 Jul 2023 10:30:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230711234734.312895-1-jacob.e.keller@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230711234734.312895-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR2P281CA0153.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::20) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: 06ca25c2-c936-4a23-d24d-08db82b23c62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vs2upX2SkjH3lriZXKjWKm4ZXtl3mGmBfsoPriL+vR1ogVSPJah5DNjGOgSjMxDRLDQiMCmiTdF94lu+RsLBD8OFHD42h6ryRVIX+d7O9EKROC+8AfE60UlcI9gqFS16Zi6oaSJ1sbyTmbtQ36XwTjKuibw0Tri+mPVYFcyra964YV30Y2vDihtiebCqdu8/cNU/dVuQc0PCq2+Io7IXLfEEgID62+BAf/uD+SoFWdB57Yv33qgJasB2hSb6vRVkadhaIVUo1EpoqKZJ3fh0gnhIzEt/Wqc+m3z9FUeeoNms7bfmS74zMURapWLhkMrh1dIjXwp1xSpDt7t2OS0IEc6rXIXTi9VQQzd5blv8RVJTFkZxw0kfAAf6z0xZEmdckcUFzBOKJ3KXVI5UdoYwym14F5h0lUTwX4uzhaRyp9dPBwEXh61v6EC+aPb2LqYNFFecmvNGVnSGK4endHoZ+CJ3n3aOrtNv2IJ+rUBAxkbPzxlfH+ckU2FJVCilNoiWpOCO2VetQfY6EZ/C5uOHOEjvAqiEHEUFMYaIKLpa1ciWONlHrWhFOmvMq90bRF3fhC0+M4AhBFbSxhCAIVZ8U/LozPNGOLGgPr+Z3gGcN5w305F3yBt0XDI1buIGY7TJvn9DB5ksESqUvhjcW11BFg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(39860400002)(346002)(396003)(136003)(451199021)(41300700001)(107886003)(36756003)(8936002)(8676002)(5660300002)(31686004)(6506007)(26005)(53546011)(316002)(66946007)(66476007)(66556008)(2906002)(4326008)(38100700002)(83380400001)(6512007)(6486002)(186003)(82960400001)(31696002)(2616005)(110136005)(478600001)(86362001)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEs5RkFhd2h2SjRQU0RHRTc5Z1BDa2lCU3RVaTBlSjZ5NGN3SmRpdHZQRjZ6?=
 =?utf-8?B?T3dWVENPZHVUWk9ZUUJ6Q3B1K3IwSjBEWHdwbVB2OHpQTUdDL1Nvb0h5V3V1?=
 =?utf-8?B?VzZ4cU05NFVlTGZrUDFaK1p0cmFnSVZoOTN4WmIzdlp6V2NuSC93NFE3emlx?=
 =?utf-8?B?R01saStYOFUzazdoNHF4eEN6YmRpaTc3bWJ6bmNyK011STNMclFEenE1WFpT?=
 =?utf-8?B?UGxIZUhrZ2FLaTNOUlJCTkozL0xmWU9UM3VBV1BUMlE1RVJrOUxENWk5SzRz?=
 =?utf-8?B?dlc4RU11RjhSZzMxVWRFRzlMWlROMGxYdnpNK0w0NkhKSkZ6OVgyQUpwRlRH?=
 =?utf-8?B?eG9HeExoZmh0M1o4dzZyVXFMTlVLdzh0ZENCY3oxN0tYR2h6d2tYUWVkR2o5?=
 =?utf-8?B?Q1BPVnZNWmluNXVRWnhkR0JTMitiVmRMQmU2djFoSnhmbHpZcnhnUFNHNUFQ?=
 =?utf-8?B?SHRGeVBMb2lxdXRRTHN1M2JyWnVjZFkwVXp3Vnh3Qzc4U2pRbEhibU1HekJu?=
 =?utf-8?B?RUZ6TUpNQXgxczd4Y3NuazhWbi9hNndJcy9VZnhka2gwaEZPcFJJWURyeDhX?=
 =?utf-8?B?TnE1aEp4SU1yVytKTnJJUmpLWE9welBEdTJobmRkQU9wcDY3QnZOcHplTGJj?=
 =?utf-8?B?UkNiWm00WGJvOHVHNFI2bDJXLzhlQ0N2QUUzbzE0djh6QUNzT3NLM0pmWUcr?=
 =?utf-8?B?SmwybEIwT1lvMEtXUEFVS3pMMFdNWDNIOGk3Nmk0aVR6dktCdlRwMEExZi85?=
 =?utf-8?B?YmFESVNpVkFyTFYwbXZHMktpRjgrYm9HcmR2N3k5RTd6R1ZnQzNNVk9XZFUz?=
 =?utf-8?B?ZkFnbVpydUJBRng0YjRLc1FjelR2WFdCckZKR3ZHZUgxeFlpM0gvN2paYnor?=
 =?utf-8?B?UlFlN0FJbjVEbm05Wnl5bzdLL2tNUE94OWtOVUlUek1tY3huSnlITGZYWWRj?=
 =?utf-8?B?eEtvSloyeEhHclc2U0dYemtuc1JsbTlISTVFZnYyTlB0cW5KU0tORUh1V0Mx?=
 =?utf-8?B?YXdYVUcvRFRxTHduWDFuMzcxR3AzYkZhU3BBbDgrV1MreTVLQk5aY1FmaHJ0?=
 =?utf-8?B?NHc5U0VLUnBJWUVnRnJnT1gxbTkzREFiSEE0Y3Qxek1hTE9tejNFVUM5Z3A2?=
 =?utf-8?B?ai9xWWl6dEJkR0pkOXRIOXlPZDUraWJGQUNsZ3lPNS8zWEI1dTZsWlpML0U3?=
 =?utf-8?B?R1F1T1pRRVdVVlFjT1p4UG4yOWx4SWVzQnVNQkJGNURoN1hHbnJ5ZExiaFdz?=
 =?utf-8?B?SWF5Z0dOQVBSZVI5d3JvM3RKTWRhSnR6a3hXRmdtOGQ5RFZsa0RWdmxkNGRB?=
 =?utf-8?B?UFQ4RUwxMWxMdUV1WjRmT1ZkRHJnM1VLeG1GMjVwU3FQZlJncmxMamR0UFhQ?=
 =?utf-8?B?eWJmWXZvcGFFcnU1ZlFuRktsM3ByVWhFWXM2MDEzM05BaCtmOTJmUmtBY1Br?=
 =?utf-8?B?ajBQVHNWYWkxU3VyaXBoc2l1SS9teGYrUGNFMU0vSWUvR3JqVmNrTzhiWEw2?=
 =?utf-8?B?c2ZYSkVDK3ZIdS9zcWpTUnkxT0cwMnRNcUpiUDRGbDVLRlcyZXJvZWVsRjN5?=
 =?utf-8?B?RThRN2dPRVg1UXpIWVFTS0VmQmFBYll1b0Nab3RSbkhvWkd2aTNSQjdCWE96?=
 =?utf-8?B?QThtVkxwTDZTaDNhK0VObnhudEFlaVVoKzFVaWpHcFRaYWRLYXNEbXd6OG8x?=
 =?utf-8?B?MW8yYlVtM0YvY2EwRUNma3RRYUlsSUFyTTFvYXpoa0gwcVV5NS9Ybmhab1JT?=
 =?utf-8?B?VHlGZjhOYy9Ed1ZCZ0owWTFIcHZ6S3MrTGw1T3dmeVNZQ2RHTHZMNnZ5c0tG?=
 =?utf-8?B?cURUbmg0TFI1eXh0MWV0YXBDTklHejhjU0FDQ3NtTjBFaXFINUFFemg0ek9X?=
 =?utf-8?B?YmtKZFZkZ0hKMERNY0liZENLbEFkSjZPbUZsVVI1aEdqWEhSLzRLZythRjl6?=
 =?utf-8?B?WVY1a0RxWmVRZVdScDV2N3dRKzZacTQ5c2tiSGFTRkgzOUpRaU11YzVnOWVu?=
 =?utf-8?B?NDN2OFQ0dGg3YmRaalV3b2tyai9vczg1NFJZdktobkJnZE55ckRwT1JjeDF0?=
 =?utf-8?B?cWlVZ0d3clgwV1FIZUk4OGdWMTA3Z0ordjlGT25ZTno5TlFwMTg2ZUFLSWNF?=
 =?utf-8?B?N0UvL0hKeVhiMnlDdzFJRjkwUlBOb0xVWXhMMHNGbm9HdjV3ZURCZzZiWnpn?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ca25c2-c936-4a23-d24d-08db82b23c62
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 08:30:23.4646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nN8j1PPXzcXo/PxcvKUbE9TiaXaCgKVTxRUd1QjiU8dugL04o/wiJh1g9n0MVIPsv7njn8t61ZmfIJS7QvlphuG6v0cEUvM25tshn277Iq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689150628; x=1720686628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SunQLAr4XMa60+TNiCi/AfplK5mzFxE5ANDy7KB8UaE=;
 b=d5FAZU9pTchakbknSqlvj2cpDirpQ/c0jv9p25MqZ4pwGSFbn6oQlRg6
 dUkW+pTowMnz4o/0EyXtDvy878mYCb9oFVdavtvJabGVmR+fSe9zYmjWw
 no+TK+Wg5Ag1ghtsDe2xFd6G9H0A8u0I1A2O7JSr8AGMUgr4dUJflwmqs
 wX3wRjsRcnv5oyrYAUVJK9ehgau/Sf4QiY5RQ5E5I210evtPEeZo2diEw
 f5hyD/IdA3yRw0LpI8MM8q258OYVQZq7pKp7bikIrAgY7AubgkBFnwTBc
 nByrOWDcVO/DDvlUO9J6+WxFq7LsIqBOrpbYXm1lgwqvF7WPwTLPewHCH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d5FAZU9p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: move E810T functions to
 before device agnostic ones
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/12/23 01:47, Jacob Keller wrote:
> Commit 885fe6932a11 ("ice: Add support for SMA control multiplexer")
> accidentally placed all of the E810T SMA control functions in the middle of
> the device agnostic functions section of ice_ptp_hw.c
> 
> This works fine, but makes it harder for readers to follow. The
> ice_ptp_hw.c file is layed out such that each hardware family has the
> specific functions in one block, with the access functions placed at the
> end of the file.
> 
> Move the E810T functions so that they are in a block just after the E810
> functions. Also move the ice_get_phy_tx_tstamp_ready_e810 which got added
> at the end of the E810T block.
> 
> This keeps the functions laid out in a logical order and avoids intermixing
> the generic access functions with the device specific implementations.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 396 ++++++++++----------
>   1 file changed, 198 insertions(+), 198 deletions(-)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
