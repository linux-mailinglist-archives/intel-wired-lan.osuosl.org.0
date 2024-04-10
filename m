Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CB889F844
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 15:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 693C840233;
	Wed, 10 Apr 2024 13:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2z33399onyF8; Wed, 10 Apr 2024 13:38:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73A8B40619
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712756313;
	bh=Clk4n7iDjlQC1CWk/xMboXF/je1CdNhyT445ZmM8Umo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DUl67jqYcPKFOA6L53jVYqwE+FCPilLSfEdd76b68BljX7kJeSsvxsiMDVOAWXPsV
	 +3b8Blqxdss7F6EpYUxdW5empeNW4iXM7FgH04n37KF2jAov7afeT/hq08c40RBt5Q
	 GnLaYHeUwm1MjnaqpLa1okrn1ucKP2QZ4B+yoJloqCQ0+njaIliPt+yNIDuxcDVyiA
	 LHscF49NmCC9+zJWTu19Nmsa9t8nzqYbbqNGLMfBiDvOlJcZ5l0eB5uytwRuE8qZBO
	 LpMxM3WuoSr87NhLlWfgBIoN+wDqAVzQkMB18gm4dhTkzGLY4ZRdUF+jLiaDG79dt2
	 DO238r5AJQloA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73A8B40619;
	Wed, 10 Apr 2024 13:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F23B1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A0274022B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftJVzY2ZR5Ql for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 13:38:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9203240207
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9203240207
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9203240207
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:38:29 +0000 (UTC)
X-CSE-ConnectionGUID: iTFeDZ4SS3GDNsPb06YFSg==
X-CSE-MsgGUID: AHERXGUsTZKlir72G8swVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7991166"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7991166"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:38:28 -0700
X-CSE-ConnectionGUID: YdLevt0QS7+H2ddvqSvLwg==
X-CSE-MsgGUID: FXa2pJdrQhqtQRJQDSkjnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25191478"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 06:38:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:38:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:38:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 06:38:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 06:38:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZG8CsVLlWkFiIjQRS4YoNU/PAgG/q75paiVwIsZtoLCqEyITrzHw+kZlNsTyMgsVvByNr6DmLdTDFYtJ3HuQO7qtofcf38WhsSJWgfV3aGdtXwnGiGV8/0LrjO7L94IWgfpL9E7pNzMBqOj3aQE306lZPmzrkXxl9RLQOKMszPRaPVHUM6xfXdWCiHh9e0+CAkye+fY3062FHT0XxXVGohugc6cklxmeBIiHhMs/9iz0xWLqzBAYni39K0bbxXrvky9eAnijLDSUA4ZNWcWCHQfquL27NraR81n89eV3Q6+hhTEnjZZNx7PujaU2zWabvzi+pgteaNO9xyBo6bdeBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Clk4n7iDjlQC1CWk/xMboXF/je1CdNhyT445ZmM8Umo=;
 b=mz578UHQIgWZG137pGiPEaWIPY1F1XFIhxQzsJLNiVo2x3rIoeUfAggsRdKgz2NEOMVIr4620SFKBTO7e5fOY5bY/sxboL3JuOjba9D9SnoGEPKHiGVjmPDhCDw1Kkibh6fJKgv/3nQ+PZmBJaI4XvFOaa0ZIPARH80tRx4DSWgoC6UJiiZXFgBkA3uG7PejWHuTIffA3b2J/pRkClneXy2UlrRECE1vyunAsAq5sgrzPkLTIPljVD3pqVT+GlOmqdoVF5p8ISBKzTre2lRJR1ZOcvWz3urFK3A4MjfD3YzIrQedyRJVUrjO+80ibubNCzkLUMlWaNq1kInaV6AhnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB7932.namprd11.prod.outlook.com (2603:10b6:8:e5::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7430.46; Wed, 10 Apr 2024 13:38:24 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 13:38:24 +0000
Message-ID: <91486cf6-c496-4459-8379-257383d031a1@intel.com>
Date: Wed, 10 Apr 2024 15:36:13 +0200
User-Agent: Mozilla Thunderbird
To: Kees Cook <keescook@chromium.org>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
 <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
 <202404090909.51BAC81A6@keescook>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <202404090909.51BAC81A6@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0111.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::15) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB7932:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7TMWdTwgCamGdsNbjKuAty/O06tUUYM02iUGINbMvwo8+IVY33IWMbJgm4BK6qk6BWS4Fsi/CPTifWJA2VUmOyF5eeKV3KPLfwIBJ9FbicmF8H0hJjOnzCx9pHg0APmeq5VxfXdstFvej2rnjsIkgNtUNZQZM83LzEDS5/180pbtKAC5kG+CKAg/uTA4ev+b1sa8kunKOvc21AaRsDYmrMOAd3EdjRUkHKemIEHDSbK9qSdVNxnRS8uqD0Kz2LwBCAv1Rc3hcBKCW0rapG/89/WiZTMUbzYzkBcL8fT5RVa+FC0aAkIGbl6I4ERPpGe8W4YYOxsd8lqkQg9e9vdCKAes06t8UQRvrXlv25VUzFakdKO4c++TnMaQchfNreEqtIIg4OaWjm2zlZ5de58Le7cHZCnv+SsuIe9kXrKGojdk7CclVn5iu7rG0RDq/hSBctgR+3N05tU+A8yfug+G5igRhJCcKh0Th+1zIo5g2lYueEM4TcsYmo4NqgsP0y8oyu+aLKqo4mdGNH0wFCgr9eDiWh3lyvre8+BYOi4nwQ/dL2i6ZxWTA6fXurP+A47THGkQO7umhtS4mobAWyMeJ+hL6ZhMq0slDtUCEswrjiivb4XKbFGKLqr/dDQeVqh3cfmUKEjJcixJg/lGuLhFbFYqMBIM9jAJybZOROeVhZE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MllYdDE1OWtFM0pEcWFjZ2ZPdS9pZ0MvWVR4T1ZQNUg0a0lpQmYzeWFQcmxk?=
 =?utf-8?B?UFJmRjlRNW9udFZDaXUzTzdtQmtJaGFMMjQ4ZDdZM1hLUExQVENJN3BoMkR4?=
 =?utf-8?B?L0FVTzdieGdQQ0hVdS84cTF1NlNqUkd2VkJjak52bElwbmlXZ093UzBUWWM2?=
 =?utf-8?B?UzExTGNLVTFsc3RadHdNNWpUSUdMRFZKTkZyYWRCall5REVaTm1qbmF1Z0xu?=
 =?utf-8?B?VWVLMms0N2ZkZDFZdkNXdHU1ZjQ5S2EyK01BSENwNGFycEpqaFk3Mk5lYmhw?=
 =?utf-8?B?KytJV2JNdWhSUnRQUkNYQzMvRkJrMU0wL1NTejZCc0M0dkpGZ0g2QW1GOHZ0?=
 =?utf-8?B?L2t6djRSMDladTZDYjRzQXkza1RKMk9Ed1Y4T24zZjlWb1NUeTIwZ3pvRU1F?=
 =?utf-8?B?WFBYeENjSlZXcHVXQWZPVitNWFE3anJQYlN5Q3RKUVFBd1BTcDI5UUI0RXdw?=
 =?utf-8?B?NkZXMWNtSE9zd01pSm9IZ3BzTlBIUnl0Z1NwaktZSUtkNXd5dVRQZ3lJQXlN?=
 =?utf-8?B?WDVUVHZPbnp4d3FQdHhiT252ZkJLbElsaERhQVMrOUU2MCtPajVQTkZmcjlv?=
 =?utf-8?B?Z3NEK2hZNWpVRTFXemRUeTE4OWpRUTA2elhmdklPT21aWkJBV2JjaVZ6K3B2?=
 =?utf-8?B?UkdHRkRoTzFZTE1EbCtteGNEYzE4bW1ZdkVrb0d4SVB3VWlUaENnNGtuQ0Nh?=
 =?utf-8?B?K2RLWEZJR04wNG4zcENIcldLQmZOTVI0cnZTTXlPMGkrdmJNaFdTd01xamRN?=
 =?utf-8?B?aFRvUzk4ZGlOb0EyZFFZZDVGYVFvdlRqVk16Y2xwemJIZFZ0aU1LSzR6ejNa?=
 =?utf-8?B?OFhlSEhJT2s4dkk5d2dLRmRzT01Yek1MRExkcDNaM0hKdVRwRms2WENsOW1i?=
 =?utf-8?B?eFBteWQyUzBoekhVUmpYZGZGTkJSSEVRWG1CSVVVMnhxdmFHdDcyVTJidmox?=
 =?utf-8?B?TnBLaHZpR0x1Z0dkUjhSaklNYzNzcFczc2tLNy9IVDhnS1ZYaVA3UWV4UXo3?=
 =?utf-8?B?ZWZQMmw0dm8rc2FwUE1NUUk0YThQMTkwZko2am02emJWRTRhZmcydnVkdEtY?=
 =?utf-8?B?bE5IaWcvTCtBcldtYjk5MlFiUnRGemJUUThaQjRteWMxczg1N3dhRmZuTGhV?=
 =?utf-8?B?Zm9YSnBEV09yUkNHRkNMbHlWRXNVd1ZhUkNhT0VMdmcwZkxZTElQVjQ3TmZM?=
 =?utf-8?B?aFh6eTgxK092TVdwM0FzNU9tc25ENnN1N3RzT1lleHgveHZwbHd3b0g1c2p3?=
 =?utf-8?B?bnc2NGN3WG9JODk2alhSVzJPZFZHaDdiRktRMmNXRFhCV3JWMVFMc1p1emN4?=
 =?utf-8?B?czRNdkQ0OWZHYU40Qzhodi9aT245Y3lDbGN2VG41Q2dPbWR0U2NBZmREOFhv?=
 =?utf-8?B?NVkySTFQcWFOT1ZjWEJ6ckY5WFJBWXNCTEtOT3FGNEU5NGVTazF0Z2ZCa25x?=
 =?utf-8?B?NGY2S1NUZVczUFc4eXFyVE0xaVVlSkoyblE0TlZ2VUpXRzVMZjlLNEdzaGVl?=
 =?utf-8?B?SVpjaDNDL3lRTzA5cGd3YndvNU12TEg2QlYzNUR0WVd2bFg3UXpqS3FHa09m?=
 =?utf-8?B?QjRjZDVJR2o3Q0hxNDQ4MFk1TkU1V2VoZ3lHbWZrenJYWW5ubjcyRFlXZFVT?=
 =?utf-8?B?VmFiMS9oZU81N1VWTWgwYi9HcCtnMkljQmtDWldOWC9iUEltcUR5QTBoTUdE?=
 =?utf-8?B?L0FhMloxNU1MMjZjcWsyeVliaTlCNlcza2RSeEoxK0VMRHppVmFkeStUeGg4?=
 =?utf-8?B?eGdIOHhLc3RhMFBCTDdYSkVaTlNranUxZzZObE50cWs0c0lleWJEN1ZMYWdn?=
 =?utf-8?B?WTc1ZkxIV1FkY3Zjb1ZvTnZ2bGIvbnJtQ1QrSHNZeEZQaVFacXMydmxCeTA2?=
 =?utf-8?B?K0xCZ1I4eURLMVV1SFdqbmdiemEwOGNIckxPSXhxN1lhSnNOZkxrelZJaUZm?=
 =?utf-8?B?bXdhMDNvUVowcWdlRVlIc1JwVWg2bFZkazJJU1BYY2lGOVVNczkxRmVENTVz?=
 =?utf-8?B?QTZ4YWZ6cHNZaWZTUFZoaHVZb1VmNDNoZFFwT0J6aUFOQmpKNDllV2RZeWRD?=
 =?utf-8?B?T2dwQ1ZrTEE3aU5nUGVQLy9Pd2lZR1ZPN1B4THpzNm9KVFFtMmZ0SFlUd0VV?=
 =?utf-8?B?bWhFTmRlbS84OS9nZVZHTVViK29hZmRBSmtOWmFZT012dmIraUhJWVlmYUhB?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9d312b9-eb38-434c-1610-08dc59637e8a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 13:38:24.0617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +cKITuaKihKS3J8yUSSx1QUZhywZ10+Yz524QAYr7KrWIjl+51Qp/JP0hUMF0mCH/lqDAy15H6qT5OzsvAp0FtY97i11hEtdR0PJ5sy4MSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712756309; x=1744292309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YIBhwAHcURy/rNJOHApcXy5uZxajWKN6gwZF8eqCuk8=;
 b=HF+krso0TpIHmFJVLBbvd6lNRc1Sxaw2R2lyIepBG7dnT/ah0RxXYBeM
 rB58eKFyOhNOYlWlGNctZVBekxOWy+OHHp/Vqid/vQqllfdZseTKhfRYU
 qeHIjLnR3pqKTz5QflZOMaOTYTax4pN8CP9jBgaPz94oKBJT+QB+hdCpU
 44sG1luViH/s/hqwDe6hDCDnpv6fIZR8Jp6GciyIlIqNaqli2XkIq+4W3
 BQvjOftKaf0cSzmvzzjyYzjhnNBubl5g8uDVhRWZI/Q8m7s9WPlxPkyZH
 RmvLmixnEmTgEDTE4y4b6ciAmqSkDHcx/txo3DGfVwkjUi4KV3ai5ehqo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HF+krso0
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>
Date: Tue, 9 Apr 2024 09:17:53 -0700

> On Mon, Apr 08, 2024 at 11:45:32AM +0200, Alexander Lobakin wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Date: Mon, 8 Apr 2024 11:11:12 +0200
>>
>>> From: Jakub Kicinski <kuba@kernel.org>
>>> Date: Fri, 5 Apr 2024 21:25:13 -0700
>>>
>>>> On Thu,  4 Apr 2024 17:44:00 +0200 Alexander Lobakin wrote:
>>>>> +/**
>>>>> + * struct libeth_fq - structure representing a buffer queue
>>>>> + * @fp: hotpath part of the structure
>>>>
>>>> Second time this happens this week, so maybe some tooling change in 6.9
>>>> but apparently kdoc does not want to know about the tagged struct:
>>>>
>>>> include/net/libeth/rx.h:69: warning: Excess struct member 'fp' description in 'libeth_fq'
>>>
>>> Oh no, maybe we should teach kdoc to parse struct_group*()?
>>
>> scripts/kernel-doc apparently can handle them...
>>
>> + Kees
>>
> 
> Ah, hm, scripts/kernel-doc throws away the early arguments of
> struct_group_tagged, but I suspect it needs to create a synthetic member
> for the tag. i.e. instead of:
> 
> 	struct_group_tagged(tag, name, members...)
> 
> becoming
> 
> 	members...
> 
> it needs to become
> 
> 	struct tag name;
> 	members...
> 
> It seems this is the first place anyone has tried to document the tagged
> struct name! :)

It makes sense and TBH I expected kdoc to warn that an element
description is missing :D

> 
> Does this work? I haven't tested it...
> 
> diff --git a/scripts/kernel-doc b/scripts/kernel-doc
> index 967f1abb0edb..64a19228d5dd 100755
> --- a/scripts/kernel-doc
> +++ b/scripts/kernel-doc
> @@ -1151,7 +1151,8 @@ sub dump_struct($$) {
>          # - first eat non-declaration parameters and rewrite for final match
>          # - then remove macro, outer parens, and trailing semicolon
>          $members =~ s/\bstruct_group\s*\(([^,]*,)/STRUCT_GROUP(/gos;
> -        $members =~ s/\bstruct_group_(attr|tagged)\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
> +        $members =~ s/\bstruct_group_attr\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
> +        $members =~ s/\bstruct_group_tagged\s*\(([^,]*,)([^,]*,)/struct $1 $2; STRUCT_GROUP(/gos;

This one does not. We need to exclude ','s from the groups...
      +        $members =~
s/\bstruct_group_tagged\s*\(([^,]*),([^,]*),/struct $1 $2;
STRUCT_GROUP(/gos;

That one is fine. $members:

include/net/libeth/rx.h:91: warning: struct libeth_fq_fp  fp;
STRUCT_GROUP( struct page_pool        *pp; struct libeth_fqe
*fqes; u32                     truesize; u32                     count;
); enum libeth_fqe_type    type:2; bool                    hsplit:1;
bool                    xdp:1; u32                     buf_len; int
               nid;

So you almost fixed it :D

Which tree this should go through? Should I include this patch to this
series with libeth or it's better to push this through kees/linux and
then pull to net-next?


>          $members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
>          $members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;

Thanks,
Olek
