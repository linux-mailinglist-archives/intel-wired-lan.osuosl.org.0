Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E59CAE6E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 00:53:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76BF140C7C;
	Mon,  8 Dec 2025 23:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xxrNCSUJKWUz; Mon,  8 Dec 2025 23:53:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0B1440C80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765238026;
	bh=h6JqYMNpyTF+tYFKSUw31OBkoL0b7bCP53Djkuvrcso=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZbL6wff6KGkzW+gtaJeSgN5VoHLl9edTp3b/sOaC5hKY26O6EvHiApwpePyxXvhSa
	 GGHQJmjVUl3M0IlmUyGmPu3BHl23EMPMSWeb6D7p0J/NiIwGtWQoeoc22u3aSbg7t7
	 vk0iluzECr6eD42npfdwEUuRJqpLPQxZtAsNEj/aYyHlfQypdrpqs84KkwYow/wlxB
	 EV4an60W8wJyEWIVEVc/M+qts9mRumwOgq4idxu13W7ZiFjl4XWVqLuZtcBA/hHVrl
	 ogXYTTMOhY+1DTTQkqWOVPsDfETThl4aR4bIjWn/mAgtkE/w2NNZdQLSP8dkiXvtwP
	 l516XjUM8YaZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0B1440C80;
	Mon,  8 Dec 2025 23:53:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EADDDE7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 23:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8FC140C52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 23:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_q3uJfKYtxx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 23:53:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD99C40715
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD99C40715
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD99C40715
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 23:53:43 +0000 (UTC)
X-CSE-ConnectionGUID: /smQwCkZToq/2RBIZpdviw==
X-CSE-MsgGUID: z/N2xPErTf+0iUAD2dDGsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66371304"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="66371304"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 15:53:42 -0800
X-CSE-ConnectionGUID: Y8rWpQrrQByI4OL9SUHmLw==
X-CSE-MsgGUID: zAoBUFdqQSWWASSFAw4Zqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="195854039"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 15:53:42 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 15:53:41 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 15:53:41 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 15:53:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GqsaBuPr5oc7R0PBvHthbr1FOcOoMVB2+CZH3tUCLtpoXPvQ6cR3Xhuwx13Z8EkYkN70tIRLxjFRuOI2kXnm9tXGbVtueZXYIXIta9qjCB4JSbFyDMpYj/GNB53vLGVFIlC1rELnBIBxwwSc/yU37NW+A9RHPWWBlTDpCen3iWc/bnZu9QCP6uyRummpk5CzcMATmh4qwG+MI7RHUmQ6FvPvN01/0pU7J6ZvdI6a0ezyR+DrTQk+nMd5Wr2+8XWpkTzMh5UaFFvCVa7KegSs0ohXi6iSb5z0EbrU9YczmUP+v7d14sE5vNmMnKYyUuJYxI0G3xqc37iobwBlj30cmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h6JqYMNpyTF+tYFKSUw31OBkoL0b7bCP53Djkuvrcso=;
 b=uPvvAeDDSwVxee2DpqKdSjXSQKtFi6g/WAQvDNqdfpOZFt0kc3xv4tYP5CNpJ2Z1JFS1mwdquyBsJze0qlNY1WjzCDx10BYPDmEz4evwYg8r15TwZ+HmYkj964jcyBJZxReW1tPT1UD+p02EI9NSssImGpVqJUM/tB5ip67Lx6wuPbSoSZDGNzUXFyg5EfbNbZMA7ZsTmWOMuapzrla2hY9mOV3v+xhUCDKPmke+uKRJTNEYcXrVgkOqY59dEMtTX9la5bW+Sswt8hzTZXFXGyUEQrdAqoJdtW4CTqdW/wjmrtVtny1ja+LVGp0SIZaeopdLJxeYOyAmrF6CsnayVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA4PR11MB9347.namprd11.prod.outlook.com (2603:10b6:208:565::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 23:53:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 23:53:36 +0000
Message-ID: <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
Date: Mon, 8 Dec 2025 15:53:35 -0800
User-Agent: Mozilla Thunderbird
To: "Behera, VIVEK" <vivek.behera@siemens.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------005YvGlzNWMuFb8W0a0pTICk"
X-ClientProxiedBy: MW4P222CA0004.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA4PR11MB9347:EE_
X-MS-Office365-Filtering-Correlation-Id: fc34dd7b-b9d7-4c35-0f72-08de36b500cc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXVuQ01TbVY4cXh3L0VnVFlKM2tKMUNNVHhYRkltZmlCREp4SG41WThrVm5Y?=
 =?utf-8?B?RmkvZWRmY0FQQ1FEZ1Znb1dQVVVlMTVGVU1ac1NEeHM0bXV0b0RrZGNPbUNi?=
 =?utf-8?B?MENQUG9MQWxHS3JwT25VYnJoMXBoMkU4cW01RjhuN2hkcGxEN3FhSWJKbzQz?=
 =?utf-8?B?VG51eDZFRGFLb3ZMMFhBdGxnNXBMZXJIOTIyY3g1WHRCRkU0c0w0eWZOWmNy?=
 =?utf-8?B?YXIzb3BWajQyem5FYXhGZDNEWXFHaUF1U2kzbDRTdm00T1g1VzduZzlKdmM5?=
 =?utf-8?B?WGx6bjhxckRET3ZwVW1HZjJNMDF3dGlsZkZCa0g3bG1UZ2FNWjJoTWs1UERp?=
 =?utf-8?B?cDl3VWEramlKajJtaTVqZWFwbXVJdTZYMkIyZDJneGhXbDB4R2dKNXpYRGhk?=
 =?utf-8?B?TzRIR0RDQ0pIZXg4Nm1ZR0dmK2JVK0tEQmtPU1EwdXpPRk50WUp6ZVBBb2tQ?=
 =?utf-8?B?MW0vb0xrVEZPQTJIK1E4b3JmNWZoTENTYzlocmxTdXcvVXdpQk1sWnIxRmRU?=
 =?utf-8?B?d3M4bmpKM0FwRVhUcDVkYW1mN296ekUzSVhOaEh4amhHKzREWmhYOTA4THRy?=
 =?utf-8?B?T2lWcnZrcWxMMldveThyeEkxMGVGK050eHJ2R1RXaXA3OG1GSU5PNk13QWpm?=
 =?utf-8?B?MElTN3AxRzJpdGNiY0JYKzlqdjJzTFAwSFhUTTVLN2N0dDZNRWRobW42SGpj?=
 =?utf-8?B?UGtFcmFXWjNDM1VmUUdlc21RUzFaeFVPNXNtY1l1QU0rY1dZSzJ3RTY0dVZR?=
 =?utf-8?B?VkI0T0hsd3JuUURnUExXNUJjQ0tKMGpBMkNGMS9CeGw0THVLQ0xjd0hWRTNm?=
 =?utf-8?B?d2hSM0RZNzgxdG41U0pJaXd6RXdoS01UU1htcUVUbkpsZXU2M2o3dlFINGJj?=
 =?utf-8?B?VWl1OWU2OXk3MEtQaWdzZjJtdkw4MXN2MjQ2QU9DUlA2VVhqS2RibkFBQUll?=
 =?utf-8?B?N2dsWlptNHlURzg0SXFlTElQSFZIVHNYbFJaUi94V0J0N29nSmkrclNOUjBk?=
 =?utf-8?B?SkIvL214M05YbjM5aklMN3hUSStYZjg5SUpXdjBGWTdTa1JndzFkd1VkaVZ1?=
 =?utf-8?B?TktwQkNqWGQ1YzVtZWhsb1dEc1Q3RmdWeHdyZzM2MjNuLzdxcEdmZkxBbFI2?=
 =?utf-8?B?Z0lpOGlZMHBnMzB4SEF1a1lyTC83cmNycjFyc3lLVSsyUnZPeVVJZk45OFJQ?=
 =?utf-8?B?QTBIaDlPc2xKUFQ3bTRoNHJBU1BoUGIzVTBSNDBGWkk5T2FYK1dVbVJ4UE5K?=
 =?utf-8?B?VVZaSStyTzZDRFhQTTFuZS9uTlF6TUtVTjFoaHcvM0d6UUpkY01MVEgxRlVJ?=
 =?utf-8?B?RHpmbFZxbDZDZDBFSXF6cHM0OEtKa3ZpNUpxbmFTRmdJUVVvaGpEZS8xVU1E?=
 =?utf-8?B?ZTJlUGdaS1ZDb0k0T1FOOHpRekphR2lZWjdFN0RaTjVWWnVBckY2SWFubi9Z?=
 =?utf-8?B?QUpXaW5Sa2ZDVUhQcjdzTEdXZlNVNVAwUnQ5akJQc1VkWVNCem5FSXk3aFZa?=
 =?utf-8?B?V2xsNWd0NTBmVFZlWlozc1NMSU9pZ3JyUzBJUkg4d3NxckJLZURCTGtSM25y?=
 =?utf-8?B?emJScUYxdy9QYUpjTVY1TmJhWk5pbnBwTmdOKzBkWDArT2xiSkFuOTRMeVh4?=
 =?utf-8?B?QmdHeFZ0ZWwwOWtHa29DWTJQZG1jNitWTVpqTXJzR0VpL0wyZXY0WElRSml0?=
 =?utf-8?B?SDdZOXNkZjhxTGNNTHFQcmgranlxdFVhUDNyeWpHaEVyckhpaVJRZEsvaFpO?=
 =?utf-8?B?TFVQVWl1MmJyV1U0ZjVLb2VTcW5EOHJYSjBPNUF6NlZlaldwK0lCKzdzdE1r?=
 =?utf-8?B?U01LS2paTjZHZm5JS3g1enNUZlMrNlc1Rm1iWURHY3cxYytjY3dHbzM1clpj?=
 =?utf-8?B?RVZsOEFWTUJuNXBCVXVwMzZONkl5c3VjcjJWT3pPQjRxcjFWbHdVS1JTdG42?=
 =?utf-8?Q?hAfJagJlB1OXKt6uYG6RlaEf7MAxHhvC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ck9Fc1ZTZVg5WDN5V1dram45K0dFY09MdUo1c0hpNkZULzZnZS8yMTV6TGFF?=
 =?utf-8?B?eUZjWWRyTWFJN0UrOWh1NVozNUZSeXQ2MTY3UTlHdk5UWUVIWU5FQTg5SjFs?=
 =?utf-8?B?dWZodnhkS1p5UXZuTUozTzY1aXdLblNyN2NjdE1jSXhGTm5Pa1FzMmRCbUoz?=
 =?utf-8?B?eTEzNW9zVjdLMENUVk1QYjVkYkVWYmg4ZHErR1JzK0toZENvZFV5S1dNZVUv?=
 =?utf-8?B?SVYrTlNPMi9nZTNuekx0QWVKVzQzOVVlZS9jOUlkY0lVa0N0ZE1oNXJPbEk1?=
 =?utf-8?B?SnFtWlZSRkZORnp6MS9scUI3Y280OXJpTlhMZnFvNTdmMFNxOW0ycUpOcVpj?=
 =?utf-8?B?aVVqbUlPa0JQL0c4SEZIanBnKy91S2JFZnRtTTRZY1BmU0lmeWd6bldOOXM4?=
 =?utf-8?B?c3RWd3JibjFhNWw3MGJZUnpEZTNXQ0NKOGtoQi95elFlS3FrL2V6Z0tJOCsx?=
 =?utf-8?B?OTJmR2U0d3MxbFpVaW1jTkU5dTRpbzJud0d5SnJadFVIOXI2WnZnV0NnZ2Mz?=
 =?utf-8?B?OTlMdzZFclMvYlFwcG1WRk1HTXJYT2ZQaitVKzlUZHcrQ1VCUkZBNXh0RDk4?=
 =?utf-8?B?cVJibW9uR2E3YXB3VStNYmFRcEYzYklmQzNZL2p4OVFVeVU0Vng5YVBXVmQ4?=
 =?utf-8?B?U3lEdjFaTTVqcGZDb0FFT1NzalJXZ3FYUnB6RGNQV3doN1ZtTFlCem42R1dP?=
 =?utf-8?B?NXV1c2IzYzlFMlFKaExEWkRpMjhwdFhISkd3WFk5WVV6RUhveTFkeVljWVZX?=
 =?utf-8?B?K01tN29WRGEzbW5QZWh6cnFZR1kyakYwOXZ5aFc4V1A2d1R0L1RsVW8za2ND?=
 =?utf-8?B?ZW0rZ0FUWEJqN1ZsWHpzSktVSTlkRkViOUJnWXJZanFTUXVCbThjMC8xdEpJ?=
 =?utf-8?B?OVJCaWtpYnRSbGdzMDh1d2NFRGszODlpQ3ZPTERHRmxzQ0xFSWxPRDJvOVdQ?=
 =?utf-8?B?Tjh3TEkrdUlBSHVDbTdhWDR2ZXZZMmZkL09kUmNoWWI2Qkxrb1JaT3dtdzRK?=
 =?utf-8?B?T3RpTzVkU1N0WTJMMFduODlqMGd2TFpGMGZqYjVybDh3SXZucW0vRTNyVmtH?=
 =?utf-8?B?eG1WZkx2bnUrLzJzR2pUUlk0RU9tb0ZaRUU4b1VlVHRmNzZ1Y2RGSmUyVmNP?=
 =?utf-8?B?WXRGd0hxcmlZRjRqOUJsZWl2eXFhR1ozbEZtRzhUVXBYb1hxTHV3M01hSDhy?=
 =?utf-8?B?WlphaUJ2WlpIOXJ4V0czTWtMWjRjQ2NqNWhvRENnMGJ0M1N5QXNvQkU0d2Zr?=
 =?utf-8?B?UHZJVmFLejRnOGVvcEVxZDR6cDRxcEtIMXBoSTRVK1FMakV4QUZnZnJqNXE3?=
 =?utf-8?B?RDhyV1hxUUZuRlNMMzNzVytTSWVRK2NreWY0bzVMSGw2S3dGOVN3a2ZFUnNV?=
 =?utf-8?B?d2FCZWdLN2tWejQzZHBSK3BXQ1hlOU5HSkkxR1JmYXQwZWhDYThyWDZqamI3?=
 =?utf-8?B?VFhZZnFqOGlybndBQ3pPRGJCdnZ3VDhxcUt4NUNuNjUwdGpab1FNN1ZkT2Nn?=
 =?utf-8?B?a0RzVzZBQXF0eElveUMybkVIWC8ycmpQVTlzd0tKOHo4aVYzR3BzZ2RnR3pG?=
 =?utf-8?B?TXY2OFl0TThXMkdKdEhobHp5by9hTXhOVEpIT25kMWdKSG9EeFpQQTR3SnEv?=
 =?utf-8?B?V0d3U1JOZVRrUWVmZTh3S25uRjdwN3hSd0xnWXdQWWxwSWo0UnJpNmx1M0ox?=
 =?utf-8?B?RXI4Rnc4ajVMb21zVUZvNUhuVUFjamNFbU9EZlNCczV4ci9HYzRKMzVtRUhK?=
 =?utf-8?B?bmhZSFViT3dWaE00aDIxb3BtOVZuRUhabUw3c29uWG0wZTVxTDJnUnRZRURh?=
 =?utf-8?B?RitLVUh0aVBFK2Q5OHZIcjV6QXVPU3ZoSFp1K2VLU2JsUk5EYjJWcGlNREh0?=
 =?utf-8?B?N1l0ODVjWEpRSldtTlBjWk51RnVyREhseWgrQUN5VjQ1STFCeEFteERTaXZU?=
 =?utf-8?B?YlJQRWRuYklkdGNGS0JYNGRScWN0TzNFVk4vNEk3RWpkbU04SXlyRnNzM0Zw?=
 =?utf-8?B?Ky9KaG5ITnpCTTdGMGh0NDdVZkx4T21GbzBCWFg0eWN4QUFNNWFySVoyQmgx?=
 =?utf-8?B?NkwrdEJHT2dRdG5LRGErK2hFTVNTTkMvc3FkQW9RdkQzdkUwY3NBU2J5S1dV?=
 =?utf-8?B?b2I2dmF1ZVIxSUtKeW1BWElOdVJEa2M5cGFGWXNqcmFBWVJXaGVpN2lJMVhR?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc34dd7b-b9d7-4c35-0f72-08de36b500cc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 23:53:36.5898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FG453sDiTYWy/lvEpErISwzhCiKK4NWYdSA5JxuyfgJkSHQ3EYbI/xSw1cDo3K9EGVXTwhANL5kIHKte14cmqKpC+1Rt8e2cv+Aj28b/gnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9347
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765238023; x=1796774023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=0A5VFzb3lTpoWi2U1rsurBb0DT1CpJDFYNsSI/+L/Nc=;
 b=DI8EubmBDCjUqKbkCYTgDrLeGt9VW8cCRO5g2aD3HfOGgYugs+0oUq/m
 Mc/gSoIUqEjtUdf6z6f8ZBFncOXRs87D4N4FonoRCjE2KCFRllAo8Cn+i
 6y9yn98r2WhWMWsNMLJysdfGBcL/o6B/Om+AV44aqzA137PAvXQZwliXF
 5NNglpb16HlhfZwGlIbButNf4OxtvIXQt6t530aHD/sbMcg7awsd7Dy0i
 gkS5aG0qw/H/oZkyn+JgLiJh0MaMeR0lfn+lBi2RHaDeh4UcjDdHkujIH
 qmRfNB9smJ/FK1lvTcPrljbMg5d4SWMgqz3o3hgD8pNo8z5b2TlkU6Co/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DI8EubmB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------005YvGlzNWMuFb8W0a0pTICk
Content-Type: multipart/mixed; boundary="------------ZUgmftAYWVGsLMkybnHcdO6x";
 protected-headers="v1"
Message-ID: <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
Date: Mon, 8 Dec 2025 15:53:35 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup
 function
To: "Behera, VIVEK" <vivek.behera@siemens.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>

--------------ZUgmftAYWVGsLMkybnHcdO6x
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/5/2025 4:39 AM, Behera, VIVEK wrote:
> From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep 17 00:00:00 2001
> From: Vivek Behera <vivek.behera@siemens.com>
> Date: Fri, 5 Dec 2025 10:26:05 +0100
> Subject: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup fu=
nction
>=20
> When the i226 is configured to use only 2 combined queues using ethtool=

> or in an environment with only 2 active CPU cores the 4 irq lines
> are used in a split configuration with one irq
> assigned to each of the two rx and tx queues
> (see console output below)
>=20
> sudo ethtool -l enp1s0
> Channel parameters for enp1s0:
> Pre-set maximums:
> RX:                        n/a
> TX:                         n/a
> Other:                  1
> Combined:        4
> Current hardware settings:
> RX:                        n/a
> TX:                         n/a
> Other:                  1
> Combined:        2
> eddx@mvs:~$ cat /proc/interrupts | grep enp1s0
> 147:          1          0  IR-PCI-MSIX-0000:01:00.0   0-edge      enp1=
s0
> 148:          8          0  IR-PCI-MSIX-0000:01:00.0   1-edge      enp1=
s0-rx-0
> 149:          0          0  IR-PCI-MSIX-0000:01:00.0   2-edge      enp1=
s0-rx-1
> 150:         26          0  IR-PCI-MSIX-0000:01:00.0   3-edge      enp1=
s0-tx-0
> 151:          0          0  IR-PCI-MSIX-0000:01:00.0   4-edge      enp1=
s0-tx-1
>=20
> While testing with the RTC Testbench it was noticed
> using the bpftrace that the
> igc_xsk_wakeup when triggered by xsk_sendmsg
> was triggering the incorrect irq for
> tx-0(see trace below)
>=20
> TIMESTAMP: 456992309829 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread=
 (PID: 945) - queue_id: 0
> TIMESTAMP: 456992317157 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (=
PID: 948)
> TIMESTAMP: 456993309408 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread=
 (PID: 945) - queue_id: 0
> TIMESTAMP: 456993316591 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (=
PID: 948)
> TIMESTAMP: 456994309630 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread=
 (PID: 945) - queue_id: 0
> TIMESTAMP: 456994316674 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (=
PID: 948)
> TIMESTAMP: 456995309493 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread=
 (PID: 945) - queue_id: 0
> TIMESTAMP: 456995316593 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (=
PID: 948)
>=20
> Due to this bug no XDP Zc send is possible in this split irq configurat=
ion.
> This patch implements the correct logic of extracting the q_vectors sav=
ed
> duirng the rx and tx ring allocation.
> Furthermore the patch includes usage of flags provided by the ndo_xsk_w=
akeup
> api to trigger the required irq. With this patch correct irqs are trigg=
ered
>=20
> cat /proc/interrupts | grep enp1s0
> 161:          1          0          0          0 IR-PCI-MSIX-0000:01:00=
=2E0    0-edge      enp1s0
> 162:          2          0          0          0 IR-PCI-MSIX-0000:01:00=
=2E0    1-edge      enp1s0-rx-0
> 163:        359          0          0          0 IR-PCI-MSIX-0000:01:00=
=2E0    2-edge      enp1s0-rx-1
> 164:     872005          0          0          0 IR-PCI-MSIX-0000:01:00=
=2E0    3-edge      enp1s0-tx-0
> 165:         71          0          0          0 IR-PCI-MSIX-0000:01:00=
=2E0    4-edge      enp1s0-tx-1
>=20
> TIMESTAMP: 149658589239205 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThr=
ead (PID: 10633) - queue_id: 0
> TIMESTAMP: 149658589244662 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0=
- (PID: 10593)
> TIMESTAMP: 149658589293396 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0=
- (PID: 10593)
> TIMESTAMP: 149658589295357 | FUNCTION: xsk_tx_completed | ENTRY: irq/16=
4-enp1s0- (PID: 10593) - num_entries: 61
> TIMESTAMP: 149658589342151 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0=
- (PID: 10593)
> TIMESTAMP: 149658589343881 | FUNCTION: xsk_tx_completed | ENTRY: irq/16=
4-enp1s0- (PID: 10593) - num_entries: 3
> TIMESTAMP: 149658589391394 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0=
- (PID: 10593)
> TIMESTAMP: 149658590239215 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThr=
ead (PID: 10633) - queue_id: 0
>=20

I appreciate the detailed outline of how to configure the system so this
fails, and the steps taken to verify the change fixes the issue.

> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>

This is a bug fix, so it should be targeted at net. You will need a
Fixes tag associating which commit this fixes as well. Alternatively,
since this is for an Intel networking driver and you sent it to Intel
Wired LAN, it would be "iwl-net" so that it gets picked up by Tony for
testing along with our other igc changes.


> ---
> drivers/net/ethernet/intel/igc/igc_main.c | 31 +++++++++++++++++++----
> 1 file changed, 26 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/et=
hernet/intel/igc/igc_main.c
> index 7aafa60ba0c8..0cfcd20a2536 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net_device *dev, u32 =
queue_id, u32 flags)
>            if (!igc_xdp_is_enabled(adapter))
>                        return -ENXIO;
> -           if (queue_id >=3D adapter->num_rx_queues)
> +          if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +                      /* If both TX and RX need to be woken up queue p=
air per IRQ is needed */
> +                      if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
> +                                  return -EINVAL; /* igc queue pairs a=
re not activated.
> +                                                          * Can't trig=
ger irq
> +                                                          */

We only have to check for queue pairs if we want to wake both. Makes sens=
e.

> +                      /* Just get the ring params from Rx */
> +                      if (queue_id >=3D adapter->num_rx_queues)
> +                                  return -EINVAL;
> +                      ring =3D adapter->rx_ring[queue_id];
> +          } else if (flags & XDP_WAKEUP_TX) {
> +                      if (queue_id >=3D adapter->num_tx_queues)
> +                                  return -EINVAL;
> +                      /* Get the ring params from Tx */
> +                      ring =3D adapter->tx_ring[queue_id];
> +          } else if (flags & XDP_WAKEUP_RX) {
> +                      if (queue_id >=3D adapter->num_rx_queues)
> +                                  return -EINVAL;
> +                      /* Get the ring params from Rx */
> +                      ring =3D adapter->rx_ring[queue_id];
> +          } else {
> +                      /* Invalid Flags */
>                        return -EINVAL;
> -
> -           ring =3D adapter->rx_ring[queue_id];
> +          }
>             if (!ring->xsk_pool)
>                        return -ENXIO;
> -
> -           q_vector =3D adapter->q_vector[queue_id];
> +          /* Retrieve the q_vector saved in the ring */
> +          q_vector =3D ring->q_vector;
>            if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>                        igc_trigger_rxtxq_interrupt(adapter, q_vector);

The actual code changes seem correct to me, so you may add my review tag
on a version which has the Fixes and the appropriate tree tag i.e.
[iwl-net] or [PATCH iwl-net].

Reviewed-by: Jacob Keller <jacob.keller@intel.com>

Thanks,
Jake

--------------ZUgmftAYWVGsLMkybnHcdO6x--

--------------005YvGlzNWMuFb8W0a0pTICk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTdk/wUDAAAAAAAKCRBqll0+bw8o6Lj4
AQCq828xvOBfr+9yLlN7hQ9aXF7e7MaxedfNJnR4mQY44AEApJPYVR44t3NrjvfKY+s7kftA7+Pg
CV79F5Pv9y8qDwk=
=YVOt
-----END PGP SIGNATURE-----

--------------005YvGlzNWMuFb8W0a0pTICk--
