Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJCOG6cz8WkgegEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:24:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CF648C8C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64E3A83D63;
	Tue, 28 Apr 2026 22:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzzxzlFdX7Zj; Tue, 28 Apr 2026 22:24:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2BEA83D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777415075;
	bh=GeRvQ4FhGFYzqjdLbEz2umtpnQOZ/xDOSmJub/uLkuA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1iXrgRc2fryv+L4V6zpwEjvhE6S0dmTy8kXROW+hDOQ+i2QH4jtDcoGtDV0nYhihy
	 AK+WhtCzHfZjO1z12EYiooJEcs5hlJfb52z3e7dnBu7JvAc8i5seDh0gYn61VKRrxo
	 cO/xmWX10RW1v/eXh9CFX4uKnCR+h9A7yqLVlMWv6zViq7Ihu0j5iZ8XUl12XoKiVU
	 0dUBrdd7ZEGs0OxWLQmOGAJjkZGS0lBGIqFUnZ9usfB042sd7lxzE7Y9dh/luGiRD6
	 7aF1tTLKtuUuLNBiN87LIkIOETSl4tC13sbHtqdcSE7R+8TiftAuRcbvsZKDRfHd9z
	 Q9uHsxqzBVX9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2BEA83D68;
	Tue, 28 Apr 2026 22:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C3AC123D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 22:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B587883D61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 22:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmDbVcrkzuHL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 22:24:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDF3683D63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDF3683D63
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDF3683D63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 22:24:32 +0000 (UTC)
X-CSE-ConnectionGUID: k2tAJumlTAyZ59dKVVSFzA==
X-CSE-MsgGUID: nNQNAV0rRU+ClPbJwv58NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78047013"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78047013"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 15:24:31 -0700
X-CSE-ConnectionGUID: Jj2QcVOwTUSg+eJRKR3OlA==
X-CSE-MsgGUID: sDRqXbJTRJm/PuonRDByvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="227568837"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 15:24:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 15:24:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 15:24:28 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 15:24:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LLxUzmDEx8DY6+GPQfNrvfcF29UghWqL1PqaL6T5iSIPAAtDfDxhhXARd1BJzn5qPZnp6qaE2K6CvTOej6qPyjMP/sAuth2vJcSIcLExuc47LIVJLvpYLytCEsuSw4AvjRS9o7SylKJ6kF1L6QrO298h3lswZkqn4xCnRQIqFHppv/PiTuNkHXEica38Of0g8BPB4xSukJBu4GLFbylnChv6n82jXr0NkEQ0tWrIWBuXVVvnbgC+2c3fA9qzqUO08FJmODXs6akvaY9pWykaWc/acxLcovNhv8Jes2sLSjVdisd4rhZAJmedqRMRxikTVj/DNIqeuJhftNpwIWaewg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GeRvQ4FhGFYzqjdLbEz2umtpnQOZ/xDOSmJub/uLkuA=;
 b=ArV9AEJwW6gEWkftTT/GZqzYOrmZxlYMaZ3NGvLg6s3F4k8dJU/Wzt6CC9oVh5fMpjM2bzo//RlNA/K4ODOXfrdxfYQkpcW9FZ3BFvnz5s+ifVVrke6d0GJZfhRluMbDxYjnkdT+aLhkNu9+Hl2F8HeuaxufhTu1OxJW+LRhhNXxDivix9PTyXGbRsHFQbnfTN6d3ocZ4Q4iuIG4jN0KAo2XbQBI0bI6vbs4ICNFwXQzUw2fKvlSDNsFfaE0+ohC2Q1bihJwRdyAi3ek5P262LdrqmCzSFv19N80AXceoiYakuemvHKW/s2i0se24PjiEnqTDNMT2TR1cGpyU/p7CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 IA1PR11MB9496.namprd11.prod.outlook.com (2603:10b6:208:5b3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 22:24:20 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 22:24:20 +0000
Message-ID: <94783c78-8c59-4c61-9c30-4577ebcd3226@intel.com>
Date: Tue, 28 Apr 2026 15:24:11 -0700
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, Michael Grzeschik
 <m.grzeschik@pengutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Marc
 Kleine-Budde" <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>,
 Krzysztof Halasa <khc@pm.waw.pl>, Johannes Berg <johannes@sipsolutions.net>
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0052.namprd03.prod.outlook.com
 (2603:10b6:303:8e::27) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|IA1PR11MB9496:EE_
X-MS-Office365-Filtering-Correlation-Id: 157ab8f7-8499-4197-65fb-08dea574e3f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|921020|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: S4+mu0EPTDaVPfdxnbhRy6CJr1DrfS29Lb4dmGe2v9qOrUqSjqdejYXcYSViuH5K9XYIp0c+R3Hmmx48hOGzg4C7HidBNqb9QPU3tkJQ/Et6PCqV3e/DB8pkJcd9lCFc45fkJuODgOja7wt5jNHkpeVHepQ03GE+qPMETnoBPjjVOARkFwA3koJwpXdDo0+OGAYIlhb1/1Tqqx2ETBY8iJ+0Vt4xUWUlh6sxBFFW4vHf0cCFTCclNWB2Q0mycAQWUzKj/qeXpCu02v0DKbIg8M9pbejcAnjnvlOdLYAdiurQf5ScdheTl1+RFkp1oV892fh1lRlH2cPPch/vQgbGIUxYVyqJlgz4Yc5Oxog1siZaUzlHBJjMunIPH1dAL9Ia8M5YaYF4Ng+zU0qDFnpUDGDNJf+C6z9IJcr/tkz5K2/mYKCDEHMLAX4TwZy8tcOEbYYMpybFyekIJQPWWlLkr3yXhUUY2kGktAN5PKqlcf5n97MRXNSywcqSK+iExMZbXb2cWvrkJLGS5aaFOjEVecyv570p0mkELTXMRpkHOPd1pfIAXW3NtiMEC2jnCyNFuWacCpW3I77Sw5wa0IaMrU+uzuGf7OhPp6gMD8uyN3hV/qwdLYatrFaEHvJyy1pUc3u3uJr3OYZsEAmTPraFXwBh0KDL8PfANr2g5XgjkeHFdgMs6BFRgF3jl1A8HRwkGa+RnfFAczeMck7i/HrsTQVQ/mZ9q0aqWFmNcQsOKAu2ENUBPZu9wp7zAlrw+R/Qui7DTFJCyN+Lw/e/UExRixUpEc5zZEzsgJWs8BdQFOU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(921020)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkE3NHVGWElXZ3pqZWRPM1JWZk1EOXhKZ1hLMUZFdnZ2V1d3Rlh5aXVMNVhv?=
 =?utf-8?B?TmRrNHptcmN1Y0JsakNQd3dvNVYycStmVngrdGx2V2VScVRsUUZWQnZvdlBa?=
 =?utf-8?B?R21sUjlydFhvVUhNaFlNbk9QK3I2ZFV4M0xraE9EaEhTNWtsZld0b0pWS3NT?=
 =?utf-8?B?VHYyS2dCUHk0Und6OExOZnBwUmUyMlU4aWNGV3RRRXZIdHVRZUZyQUtLY1dS?=
 =?utf-8?B?ckgzQk1UOEZRck14K0lUcmRVWkJVWm45U1dHTGg2Rno2M04zejM3c2RkTG9W?=
 =?utf-8?B?NUxQT1NpZ1JUajB2OU9sSkpIK2cxbDZaVmY5c1laTkVqMnpFdDR5V2FETXVU?=
 =?utf-8?B?THQvL0xsU0lHUE5JOTlrY0JjSFNVdDdMZXN4UU92eWhBSnR6cHNCQUprN3dX?=
 =?utf-8?B?MTdKYWJEZ3BDb3hzRHFCUEVlQ2xlMU9HR2NSOXZ1NTVacEgvVGp0QXhMKzJi?=
 =?utf-8?B?dlJuTWVvajl5ckZjYVEzU0tqRWUreks2aHJVUEhwc3I0Z2w3dUU2eXRNTkxO?=
 =?utf-8?B?UmQ1RUlzZUk0N2cvZjRYYThsSjR1ZkcwenJZUFRmb3dRZldLT1BXWE5idFM4?=
 =?utf-8?B?VHRYdEZWVnYwZi84OFdicm5pUU5vMXE2S0RnN2JJeDV4emlPQ2ZlcUpYeW0z?=
 =?utf-8?B?R2c5cjNxbzFxTHgzcU1TblFJMCttRDg5SnBXM0M4V0EyMnhSNWZiVzVtalhS?=
 =?utf-8?B?UkN2WXFXOUJ1b2l4ZnJUUitGbjJTYjJSbVBDR0UvM1JOL2FHQzZEdGtEUzho?=
 =?utf-8?B?c1RrNzNxUmtQdW5mUmJsSmlwL3k1cUJMakNYbHFUV0pVTk1zcFZTaWovMHE1?=
 =?utf-8?B?OTJGeG1ZOGpjYVJPOGUrQW55Z1R1cWhlSmlOQ3pHeDEwajU1eE9HR3JCZEVJ?=
 =?utf-8?B?c2JYQytMQ3N3Y01hcUQ0SjY5T0QrcW5TSzhJVFE4aWZRVTJtNXk1dVpyNjlr?=
 =?utf-8?B?VHFjeWNWbTJEL1FLamQwYTRDOHVxbzFVRzd5ZWtaVUErUG9HNEViY2Z2Tkl2?=
 =?utf-8?B?ZFF5QlZZV2lDNHIrSnNaWUdKOHlaVFJyY2hycVV5Y1RzVFhyM1I5UDloR0Nl?=
 =?utf-8?B?NzF3R1ZtTzRuVVA0STNpTGhGZC9FdHZxbEJoYmdGbmhZNkJ0STBQb2hLa3B2?=
 =?utf-8?B?c3pjVGFDbGM1T2dqMFY0eVpEMnRVNC94UkcrNGd2RW0vdytzRTdnZlBrMGZH?=
 =?utf-8?B?RDQ3UG0yaENiT1BUNEY5OWxrb09PTGg0cS92TXYvcExoenVPRUF1ZHZPOTl4?=
 =?utf-8?B?cGpiTzN1N05YNnZqTFJpYndaRHc0M2pERUpKVXJJaFM3dG9JOVpqVnVhYXpG?=
 =?utf-8?B?THBPWlFrUDRxR1RwWVd6OG8xblA5VGo0ZGNxTkNXVHFDMkx2V29TS0paWUlU?=
 =?utf-8?B?U1JCeCtudFZlb2RQcG43TW83OU5ackp5ZWJDUXFvZUhqUndjMVg2UWIvVGpw?=
 =?utf-8?B?NTdxMkxlZmpuRW5jVHR6UVR3SU85UTAvQkcwMklXUE5uUlRrVm5vUTJ3SUpn?=
 =?utf-8?B?Y051UjROZ2tTdVRURmdjTnQvOUVSZnFzdGRqM1YvSnRlc00rdkZEYXd0U0dj?=
 =?utf-8?B?cytXbUlIZi9Ocjh2M0tvVkhLM2RtWjZkcXFITmtySVBBOG1BYUowSE1jeUlE?=
 =?utf-8?B?M0JseWQ3R2IvMUw5TTdYUlZUeTkzMmd5RHljUEV6K3BnSm9UaUNsdXFERC9O?=
 =?utf-8?B?Tkl0SzZBR1lPOG05RGxtaWF2cWdxMENVZGtVM1VJUHhEV2pkdE9pMVNWMXRs?=
 =?utf-8?B?Tnk4TUViQjFlMWJhTXMyTWVvdXgvZkxkancxZzdpQTJBNm55MndDcFk4dVBX?=
 =?utf-8?B?NXBiS0hzRDZVaUFZK0pQYVRQcmpKQk44TE1xM0lCbFljaFMzU0Y3anVOTEU1?=
 =?utf-8?B?RVhDcnZSU2hoaGp5SGc1Z1BZWkdkVjltMEE5UE56LzFTc3ZZOU44ZUJDV2tx?=
 =?utf-8?B?NFljV01mM28xNUZWY1pvLzBoSkV3aTFSUUMyY3NuZldIZXd4dmlCbzFLSTA1?=
 =?utf-8?B?N0NRRjJZaVRmUnhia29HbTBaVmNtWXRZWDlkcmt2SXd3anJnc2FXQWhubUVP?=
 =?utf-8?B?eXNaTWxJZ09ROExPdlNuenlTNGs3LzJycWJTWTNkK2UvbFN2b1M4NnN1Ni9Z?=
 =?utf-8?B?Z05JYVB2R1NvQ2pXcXd2eTFDZVFwd0RyNzFmQ3dadStlQmU3aGFXM0E0RHNB?=
 =?utf-8?B?bUpIc0luZllqcWlkZW9IVlNUNHB6VlRDZGRJOFFWNG8xcVhENUVPc25NQk9Q?=
 =?utf-8?B?eldobktuZHNpam1QVW1ObEpjdVZVVTQ4di9hNnNHMVkweTh1Z0cvVlJGTlpE?=
 =?utf-8?B?VjFndGU1VUlCOEpCb2VRaDJLSXRQWDl1d0VmSTJOSi9aYUhXcGxuUT09?=
X-Exchange-RoutingPolicyChecked: PgGhVP3sg+lo5xAuOnTN242VrV1qcIMmWreGlO/3nyyVmuKi4SBIkns2/gHfW+xHLQj223QnSR4VrlNDvYHs1oKDXZ0KC0e51gx5mEzrH1s6fTUTt0MboJNNIyFwu6D/YQgTTXpNp9bKvRgfQitkGVCHEVYJgfXjdTLhk/9sOORLwVtNMFCX67fCYHzGxj6Pcb2GPiNh9T87EBolx2wfCqr7/cFkmIcZttgUKVkYL+kLPkt25aOb8WDXhC/ixbQ3dBETO1cWMtpo3EQgyJSLNEYHyimCEMBd88lKo60rNu7EJMhd2BSF1FjbqBqUgIniepjb8/JrkjeZ1R+qj7n03g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 157ab8f7-8499-4197-65fb-08dea574e3f6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 22:24:19.6535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gMVqUS5nYItKOR+sfH94mw9+gJbpdTkvDxQO4OTgY0p7onxVLFY8iJ+OeyECu8AQSpKtSi1eOTicI4l5dO1CI8KfzPcgLA7YDhqtp8UfcYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9496
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777415073; x=1808951073;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qJ4zN125TRUaBHrRfB92LlN4rMdMcF2SY9ZqQ6irKSE=;
 b=XHi1ApPoPbWGRDvGg2JPfgW/ixMH7PukozPgxBh6a4Z0AmjPe+e+fGpd
 nF4q3OpOMh76819ey9A83Cj1GhyuToyCL6X8voyxxqK7fUPt1Mgk/DWqb
 I5GYhRLgAsx6irIiRfJiPKRHGrhhw03BLn6VM954iVgxEBARl0P+gK1PR
 jZ+lHWKW6EJWjPTAWNX8HUB3b1H8Rp0//US4pJ7YRq32+LNv2qEXbdZmk
 20NBwF7xISBhX5qlh8b+diS+V+keBP5Bgu27mRzxi7PX1YgV6wtkRVn+a
 VAhxVvqb+36vb+q3N+z4UYITtBNXf7d5ChwGmpSxFFIs8XqdEfhqwRgQ+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XHi1ApPo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: Consistently define
 pci_device_ids using named initializers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Yonglong Liu <liuyonglong@huawei.com>, Kees Cook <kees@kernel.org>,
 linux-wireless@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>,
 oss-drivers@corigine.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Marco Crivellari <marco.crivellari@suse.com>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>, Andy
 Shevchenko <andriy.shevchenko@intel.com>, Leon
 Romanovsky <leon@kernel.org>, Colin Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, linux-rdma@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Philipp Stanner <phasta@kernel.org>,
 Chi-hsien Lin <chi-hsien.lin@cypress.com>, Ido Schimmel <idosch@nvidia.com>,
 Potnuri Bharat
 Teja <bharat@chelsio.com>, Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Joe Damato <joe@dama.to>,
 Petr Machata <petrm@nvidia.com>, Kory Maincent <kory.maincent@bootlin.com>,
 brcm80211-dev-list.pdl@broadcom.com, GR-Linux-NIC-Dev@marvell.com,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Manish Chopra <manishc@marvell.com>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Jian Shen <shenjian15@huawei.com>, Jijie Shao <shaojijie@huawei.com>,
 Yeounsu Moon <yyyynoom@gmail.com>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 Mark Einon <mark.einon@gmail.com>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: D0CF648C8C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:m.grzeschik@pengutronix.de,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkl@pengutronix.de,m:mailhol@kernel.org,m:khc@pm.waw.pl,m:johannes@sipsolutions.net,m:richardcochran@gmail.com,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:oss-drivers@corigine.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:marco.crivellari@suse.com,m:kevin.curtis@farsite.co.uk,m:mingo@kernel.org,m:ionut@badula.org,m:andriy.shevchenko@intel.com,m:leon@kernel.org,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:mengyuanlou@net-swift.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:linux-rdma@vger.
 kernel.org,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli.us,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:cai.huoqing@linux.dev,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:joe@dama.to,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:manishc@marvell.com,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:rdunlap@infradead.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:shenjian15@huawei.com,m:shaojijie@huawei.com,m:yyyynoom@gmail.com,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:mark.einon@gmail.com,m:enelsonmoore@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[82];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,huawei.com,kernel.org,vger.kernel.org,intel.com,lists.linux.dev,brownhat.org,corigine.com,ti.com,tux.org,suse.com,farsite.co.uk,badula.org,marvell.com,lists.osuosl.org,net-swift.com,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,linux.dev,google.com,seu.edu.cn,mucse.com,dama.to,bootlin.com,infradead.org];
	NEURAL_HAM(-0.00)[-0.631];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim]

On 4/28/2026 10:18 AM, Uwe Kleine-König (The Capable Hub) wrote:
> ... and PCI device helpers.
> 
> The various struct pci_device_id arrays were initialized mostly by one
> the PCI_DEVICE macros and then list expressions. The latter isn't easily
> readable if you're not into PCI. Using named initializers is more
> explicit and thus easier to parse.
> 
> Also use PCI_DEVICE* helper macros to assign .vendor, .device,
> .subvendor and .subdevice where appropriate and skip explicit
> assignments of 0 (which the compiler takes care of).
> 

The end result is much easier to read, in my opinion. Thanks!

> The secret plan is to make struct pci_device_id::driver_data an
> anonymous union (similar to
> https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylibre.com/)
> and that requires named initializers. But it's also a nice cleanup on
> its own.
> 
> This change doesn't introduce changes to the compiled pci_device_id
> arrays. Tested on x86 and arm64.
> 
> Signed-off-by: Uwe Kleine-König (The Capable Hub) <u.kleine-koenig@baylibre.com>
> ---
> Hello,
> 
> the mentioned follow-up quest allows to do
> 
> 			PCI_DEVICE(0x1571, 0xa203),
> 	+		.driver_data = (kernel_ulong_t)&card_info_10mbit,
> 	-		.driver_data_ptr = &card_info_10mbit,
> 
> which gets rid of a bunch of casts and so brings a little bit more type
> safety. This patch is a preparation for that.
> 
> I handled all of drivers/net/ in a single patch, please tell me if I
> should split by subsystem.
> 
> Best regards
> Uwe
> ---
For the Intel driver changes:

Acked-by: Jacob Keller <jacob.e.keller@intel.com>
