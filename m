Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B30786740EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 19:29:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FB1060A70;
	Thu, 19 Jan 2023 18:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FB1060A70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674152943;
	bh=Z3rCTNmVUfDI4Ti9zUmJfS2jv546fn0Ytr3dugIUTHI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a+Uh/CHhfrk6PK6e/RpmdYqcS7AogbXc44YhSPEgzt4sBT67PChm2jlEZ/Xdp33/G
	 /6X7Mwn+KEJe+njn4eZKbpM5CPKE/Xy/3GHGLpKkbxk/XpsdQf7VnVUZDDAX2gy/+2
	 VEHBkW7ikKaHp6LkGjClkjlmXrFexcQmlzHTZVkDOOwBh+26nWEifhzo1mgN8hayma
	 e1rDiH5ul/W0v+k3y2T1c2sFNIESPEhUF1RutI1pqrP5B3dAqqId9TiiDMTQezHTGc
	 DLTkbyC1qV/+pMUSFAsSzbZTQBNVgHdggw62Q+8dEtzGiXXDxG1La5Vmyathg8TjFT
	 8EL/fCIP5XCNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uO9CnPREAi9U; Thu, 19 Jan 2023 18:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75AA560D67;
	Thu, 19 Jan 2023 18:29:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75AA560D67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B59E91BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C2C081583
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C2C081583
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AaUKEHsFU_I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 18:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D779481442
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D779481442
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305742770"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="305742770"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 10:28:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="690730230"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="690730230"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 19 Jan 2023 10:28:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 10:28:54 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PlZBfx5AWlOXj+cIQ0FRAVU7xsvSdpIupj7ilaZlYp06RsNDZToeDxui2q442Li8aakVJoN64TuGGeynT+V2qsD5e+zwecb1H+zLjlsXr+t8ORiOPNDzprN50P53HWkCFDwoA2TDTU2HapD9XCXCt8NCu9LYWNoFblxXxu7Whz5JNBVsdpOb7dJbqk5Vw9FBYLqXvztf/xzOVvjiUdXabU9xfyTnFVFHgM7aJiKFeRxKmHxTJX4If76jsq2hUTfIw4A6kW8AdcftM3dXrNyXuWHYBBbBlgRzYfQeoCN919FJPMakzRoKooVJsmPt0QUTSvcOEgJF1L7+kKB8NpkH7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lkmSRNPjxsy+BXu0hNSe6YKFCtF89f7iS/U3ke4GDTE=;
 b=mdxMon9FwrLjEImUS6bwRCgxBOhNxx37p09Uk4MSRgyNA+RwqpCrdSdw07n3wcpnHNrtqJVCPbk/3Yq9wPPhm9unDBoedJfpmLBPAWxy2kIuzwfTMX8PZd2dHCl0RPhkjqI3SrfE2FG2RyjFos17ZNjmVA92qnwocN56+cDtBMjggZorBeMkr8iSJOeDGO3XjVokS4i4q3bbeM7dMDhqBT9q0zzaZaH+ZKKSvRehW75IVnlVyP6BujEkW/X8a2W/+16zDx38SD3mw17hV+GDIyCI4jLQl2NqCv8jsoS95HAF6tnbGYuOd3x8HzkfJQ164yhHcagyP8pnhA/5yAneEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB7410.namprd11.prod.outlook.com (2603:10b6:8:151::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Thu, 19 Jan
 2023 18:28:53 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6002.026; Thu, 19 Jan 2023
 18:28:53 +0000
Message-ID: <d5f6a7d5-0301-0c51-d663-775d06536e0e@intel.com>
Date: Thu, 19 Jan 2023 10:28:50 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, <linux-pci@vger.kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-8-helgaas@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230118234612.272916-8-helgaas@kernel.org>
X-ClientProxiedBy: BY3PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:217::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB7410:EE_
X-MS-Office365-Filtering-Correlation-Id: 0adaca28-6032-4d18-5058-08dafa4b0453
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsLSSN0BoZdmfTPhj9zwkG+XQU7nPjDvoyBKcV46/O4eSkeYIH3g8stlxZjRqnnZIDkkK3bBamxV+i8qNZWcnPwAX8p61DTWJaI/Yh7IJEsPrEzJlQZGknp6Y+gfW/q66wbDQZ03tDeSUZ5oaFmi/zhH10y2eelZtG1VVA7oSyhb94zvgkr8qIiR/EU2piIV3nEYWE3AgEbYraKA/qQOBURgGlv5n/X4gw1nPaWtn9Ap+kK8vHdUzDYGe7aq3+rPBrIA3fe3hTy2/QWE+7GxMgULYz17u39x0vARxQIz9CjvtCuioKdclPtblJNtFa7J8eL36msjx0GyWHM20p5ra3iHrS+CqP+cRWidy+PuJdwyrOU/g8MGexDJeZVuO48S54B/c5E9dPQCWW84+85CwLvid05p/lFUqCOxxVaPPpFIM7TMSXYDejjQR0yQYc9VzIh1mURfGowCR/d242wklBs8z1QgDaGT3LbXwJuwGK3htAV6f3huYxCKPu0zEmjDrWJgi0IPK893o/p/tXU2PkbB2T72lcvGuuhKvY2XkSlLTQnljNxln4tenRqOU47M6LBqcJ4+pg5lrFbgAcycodjzgQkA40FaBGrw8R+IJrd4X6B6VcBPH6eFEGV33YsU8G7EEqxsZ6T9i4mZx4foMdOBw3Ebihq+xob7pkPdCR7VK2IjVKiIwqMmM8S/3wvrVaImcOG36CrSRkDTpeOhNEoysZqMwX1/oZGjFPV8c2A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(38100700002)(31696002)(36756003)(82960400001)(86362001)(31686004)(2616005)(186003)(53546011)(6506007)(6486002)(478600001)(26005)(6512007)(5660300002)(8936002)(2906002)(41300700001)(66556008)(66946007)(66476007)(54906003)(4326008)(8676002)(316002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmJFR25NVmdNWGJFeFI2L2FtWGQ1NzNkeWIzUlZSQTl1dzJqQUsrVmFKVDJV?=
 =?utf-8?B?b0FHWGN4WXBRdm1mbWFoby9uTFRmRWpUZEpOTllOZWNkYTUxOWhVb0FGbDl3?=
 =?utf-8?B?Nk1pdHpBMitwMzJQTzk2TXVicTVUazMyaDlPRUdPN0Joc0ZaVDlrRlZuVklM?=
 =?utf-8?B?M2hxSHNLMzBSdjJoeENBOUxwOERSTUxOcXQxdzRmeGNnRWsza09EUXNSMXRC?=
 =?utf-8?B?V1duOU5qbU9HQ2RtZzZBTUhIbXhBNFpxS3k4R21lbmZlWWJ3YjZNQnlZQUdr?=
 =?utf-8?B?bVlvSVRudnJ4TEw2cWlhZitlWE5SRDJhaEhYN0JtbmV6RXlTdkdTUFFJajBL?=
 =?utf-8?B?YTZYU0NqQ29EWjEyU3BWMDNlNXNlSnNHS3B6ejBjQmxHckVSSlNocFVuakRB?=
 =?utf-8?B?Nnp5VTVxZzlSbzVxOWNiWmlMYWNWanRqMFBFUDJZN1VsUlVzK1JnZW1UODhS?=
 =?utf-8?B?V2FHZWM4eE1USitlR2dFYmRHWTlUbHI5aCt1UVRmYWxoRC9WS2N2aUkvam5i?=
 =?utf-8?B?d0JmdURuOWtpZ1FvaXZoQ1ZZWEZwVm5zenBodGVqYVZjM25HYVltSzF4dktK?=
 =?utf-8?B?MWUzQ3RFVVErZHd6MXZ5WmI2N1dWbFRmN3BZbUR2ak11Z3FUYUM1dFAyVVM1?=
 =?utf-8?B?eUdpLzA0bEdiaVN3dlJpK0YrcFlsK0RiRU8ya3R3bVYzTUE3RktYWjU1dE0v?=
 =?utf-8?B?RHZUZWxIUTRHUlBVZ1AvOUFpeHpwbCtkSXNZa3cyTDVaaC9NWThPcUVkM1No?=
 =?utf-8?B?d21KVE1MdGRBdG0rUjBGMUJkQUc2Q1drUllGWCtJVHBjdS9aTzlpbkZGSXZO?=
 =?utf-8?B?VUsyUWY2Q081Ulo4VlpheCs1enlaVHd5UTRWTldHT2EyVmkyZ3MrTit1cWEx?=
 =?utf-8?B?SDVoZ1hlQkxOak9xUVE2YjFMN2ltd25vNllNblJlc1ZId3V1WlgwaGF6UHZW?=
 =?utf-8?B?OHg1TG9Vb3EwYzQxNTZ5b3NBRVk0TmJTTFNDRUZyM1g3ZFE0OHV2RVBvSC9P?=
 =?utf-8?B?QitPdlJGT3E5dW4wcTRwWStDdFYzNXcxRmp5SUdwdjNBMXNpNUhJMjNyWXJT?=
 =?utf-8?B?K0xIdys1aTZLQUIvZTA2SXpQQUcwTUVXb3NIZHYxVW9Ha2QyR0dqUGJqZk5o?=
 =?utf-8?B?OVhGZkt1QUh0dGU5Sk9IQlpkazl0RkZsSFR3N3luZTdVYlM2dUdaREVtcTBQ?=
 =?utf-8?B?bURUcFZ6bWQzUGVLd2N0NUQ4YVZ0L1lYWUh2MkVqdTFlT2JQYjFVV1JQWXg3?=
 =?utf-8?B?emFMRjdCR1JxRmtJTURYeGE0YlhPWHVSSktad0VDWjVyN05iVlREOW5JVmNH?=
 =?utf-8?B?cUpwZkt3clJ3SHN0RlNEMDVBNnZ1bktUcnNBVHdlancyWmlXd2VTelAwSU90?=
 =?utf-8?B?cUVySk5jM2JvUzdsTGpERzlkV2Qybkc3VjVTQ2NWeXVuSjJVTU16LzFSb3Nm?=
 =?utf-8?B?enBpNUhTMEdYM00vQkpFTEwyMVB0a2NXbUUwdWVNVHZrVlVjWmZjcnlhMnJ2?=
 =?utf-8?B?dkdpTmpwelNlUFp0YkdVZ1crS0NYazI3aUh5T0pMVDdGT3Jqd0xmL0ljVmdD?=
 =?utf-8?B?bUdMOWJYQ2VhWDVqUHROcVVzRU8rVUFHZTl0d0JMKzFVbnJIcmg3QTNpOGM3?=
 =?utf-8?B?MFRVbWNaVC9oWXo3emtyVDQ4MUFKSGplZmVQOWU5RkFCQktqWlZTclE5cERl?=
 =?utf-8?B?akJSR1gzUm00UjNocjRZSFFxS0N2ZGJzdjNjcEl5OStpMzNpTmdpcWw0TXo5?=
 =?utf-8?B?M1ViZVZNVVJuMVNCNjBGN2xkc2RlekY2NTI4aEduVzhVZHcwb1NzY282SGp0?=
 =?utf-8?B?WUp3dUlCQllidDh5eUplaWlHZGFFRXpObnM3WEk4Z29UTUEwdnA3Y3YwUDBZ?=
 =?utf-8?B?YlZjZFh2SUkwVVRFWm9OZHJsNndsMllKZzY0aWJiZ1VnTU1DZGQ0RFBmRkJB?=
 =?utf-8?B?b2F5UFFqeDBtMXBNYzAyMngrclV2b0Z3SzJqRjVyWDEwTytFT09ROCt0dENl?=
 =?utf-8?B?L2NSYXFGRnc0SDFNRGVEM2dvZTRlSmJTTGRaQ2U5ZFZtM3RzSk9xUjh1akND?=
 =?utf-8?B?NnRLL2Vid3RXMzVUdFJnenJoZHBYeWxMNWtTeGFwS0dCM2hHditWYU5ZOTVz?=
 =?utf-8?B?MTNHSEVpMFBBaVZCUWdxUEFUK2Fsem9NT2U0RDFyOEc0d1JaSmJUZ0VjWmJP?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0adaca28-6032-4d18-5058-08dafa4b0453
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 18:28:53.0594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +R2y6V1KcsO1B92BdMCpIFDG9hwkdSjThleGwMV5Bkbb8R+GNh7v9VVuFpM+PAxrrO4cxiCuXACAIp7h0r9/ug0kJynv9UUdc87kHIu68Xk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7410
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674152936; x=1705688936;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USPbsC1YC+Mqx6XxietTfsI9Bcj29xXnxpyx6/wroX0=;
 b=gmcTC8KjAm4cHuuBVX6aRO5pSRgiei+RX2HUkWiPLCHk2CF4xTkZ6cZt
 STtST6YygXpShz8Jc44gNVC3RxFQOgTI4xCjpY2VIL+RzcVQjbk+i4QE3
 jTuS+An1rqKaD/WpOLBCDk8dBrT9FFuIYBT6CAW4vezuNnimRb9Qja/BA
 87Fv2Y61JgPEFSCl6Jzqc0mbWLbWjNGIPcQKvbTMzYoZJbD74VfeO/HMk
 xg1tZRIB3kw3sf3cqLuzC4e4apm0x0Lm1kkSfAP/7p9Fd96zuQoRUV7DX
 N05bab7p809xdMQezhRktjptSfy6SChOyNFYpO094eFqbkdtjkqVViKbJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gmcTC8Kj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 7/9] igb: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 5 -----
>   1 file changed, 5 deletions(-)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 3c0c35ecea10..c56b991fa610 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3194,8 +3194,6 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (err)
>   		goto err_pci_reg;
>   
> -	pci_enable_pcie_error_reporting(pdev);
> -
>   	pci_set_master(pdev);
>   	pci_save_state(pdev);
>   
> @@ -3626,7 +3624,6 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_ioremap:
>   	free_netdev(netdev);
>   err_alloc_etherdev:
> -	pci_disable_pcie_error_reporting(pdev);
>   	pci_release_mem_regions(pdev);
>   err_pci_reg:
>   err_dma:
> @@ -3837,8 +3834,6 @@ static void igb_remove(struct pci_dev *pdev)
>   	kfree(adapter->shadow_vfta);
>   	free_netdev(netdev);
>   
> -	pci_disable_pcie_error_reporting(pdev);
> -
>   	pci_disable_device(pdev);
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
