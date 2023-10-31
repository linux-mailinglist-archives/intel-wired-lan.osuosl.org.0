Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FFC7DD147
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 17:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3492783C45;
	Tue, 31 Oct 2023 16:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3492783C45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698768735;
	bh=HAPGffMgbKsQ8ghofZm5y6UXYEndYRdJpENWeWakByY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KKk5qtdkqXKiKoOLo+LzA5QAZeFECOmvM09kdXmIxazm36IYXIzManWRIICp6rhWe
	 HKbm64mtgr2nVDVehy01P0rNrML0+e2TWE1cQ4yfuCvGDxQAbeMbd9C4nimM/VQpQl
	 8mP/Bm4V1vqqgbRv4g9YejM7B290AeiQUTcJ85Tj0f3fK5spziEIa6jyMaD/0Ut4PS
	 adnvmP42RifgGk7j4gvjLA97dTC5ZBByyFJEyOWCgnGuXjIsiNj+ud43BAdIvJwTON
	 EUTdjFWyyHaOLtGnAZl7pnZ0V11c0bVuQw06CPdpZ40g1lvilpq19oxmN9B9U6VBTd
	 xu9/E+Ky8cX2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JVgIQP4LXuyp; Tue, 31 Oct 2023 16:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDEC183C3E;
	Tue, 31 Oct 2023 16:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDEC183C3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 159EC1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92CFD83C67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92CFD83C67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTvIP8_Aldwv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 16:12:06 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2071.outbound.protection.outlook.com [40.107.96.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C69A183C48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 16:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C69A183C48
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MgutdSL+rg6ab6d9GuWsVrKZYFaypOZctA0CPiYRYuRBw4RL2bUyIgYn4FgiuaHTZxC+zW4w695jVBJxpkorgbzYxx0wXPx2ySzcC8EyTWOxJirg4cFwHPkj3AVXNxbZGM1X+DQC2AS4AcCURjEpj4amWu5AjJfuJ8Q5AZwta99Il1TTl1UOTorA8LvUtFodtmxwfkcyXCoAVN6swcIn6g7iIUv2cpJbo4cTOSOuDKKuTlSLxOEns8jOTrOkUsKViH75VX4Osj4AfStxCTlEj/eNCy/YGuGV/O9AE65hsjX+OplP5m2NoAMt6+FcS9r/un8/qErF/1qAtVOs714obA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t74Wmi2XG1PDpMT/xqRNiSXdsY4mVLHUdi75n/Y/tY0=;
 b=eK/ASs3hLndWfydV3JvaF5QB6EgNXistLomZkQHJ+ZEiQIu4VuUckeeotdJsvCT51tz8FWJbuyiYMFSNVHhSL+VlfStgoJxp0npIpYBExrPMqItY/Bggi763+febJVbkZFnfmwEDxECvW+F/BbUOztdQ48NMT+xDqxyfyfc3Lnr6USClqKp3H1EvtCIYN3wGrEETflXPIZuloed2lH/SHubT2z8Ykz44LJIj90uS7mkYfSk//9NFoyKSH/XdWr3r7xl7iOowvEkGvySOBYZiz/OIMckBLbTxBiewCM+k4DFajw/YpaKcvXHMDfXwhTdor2JEVii0+1fY+yZtDVOOuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 CH3PR12MB9393.namprd12.prod.outlook.com (2603:10b6:610:1c5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.28; Tue, 31 Oct 2023 16:12:03 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 16:12:02 +0000
Message-ID: <b4116027-8045-42a0-afa2-1dd8b17ea9ea@nvidia.com>
Date: Tue, 31 Oct 2023 18:11:53 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
 <CAKgT0UdObrDUGKMC7Tneqc4j3tU1jxRugoEB=u63drHhxOeKyw@mail.gmail.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <CAKgT0UdObrDUGKMC7Tneqc4j3tU1jxRugoEB=u63drHhxOeKyw@mail.gmail.com>
X-ClientProxiedBy: LO3P265CA0021.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::8) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|CH3PR12MB9393:EE_
X-MS-Office365-Filtering-Correlation-Id: a672c2c7-855a-40bb-e47e-08dbda2c1e6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kR7giDjOYTZuwE2xk1NZQc2Ug6plirtCx4u6RHOdAg1uBan3f4RuPpI24lg0S47wp6azCG2K6I8yKD9Y8cdurwuPJkv2eGzCp8de/3eo2+1jReAjHWJO4tpywcUZIcpZ15bVAO9LLamgrJbX8acB8JmK7OUOwAt+c+3SWB2JnjN052YhUJdF+yjLT328TiYl02hvEWRz7I829B0Y+VNUklqJH1cNbAX/Mr9AEkAXwHoxanFKh9tMBcO0zxJ3GSXXBrszji/sg++5vBsymkk//ASFPQKC26Ir7a6Ju5Ef0vjSLJWUXaK+t/F/c7IRYYfzFauX2VHJ8IUXT/C+ffsT1QK3N8YnMJHUJyMomOapPn5oD42p9lDO3QIbDLJfnJwYE5MZ0Y/5HOOAT2b1oYi5Vy4eLJifO80TVjdyTSkE158AE7BPBTSTQj7qw8Zv3XnRrzJTqYQZ2HzK9BJWm1oJr4g74+7rFC/3z2Ep04M67OCWWZnA1oOuzVP83FFTOqap45ekVxPHKLMuwh6Q+8jOzr8mKRqw76LTaHhJiATf9jpKsZ+ggIW4xKZ6NyUI8J8gLofgwH9y7JfPBCRUb06BznE+Zb49qUWIq6f+XjkF1XLdXxj8pZWgYQIc/NGhkXbsdvu7lWrG5FtoDrm5JUO9UACbH0QBMX6CEpB/PTrpNE8uzird0wXwbSEymprEC96t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(346002)(396003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(6512007)(26005)(2616005)(4001150100001)(38100700002)(31696002)(36756003)(86362001)(316002)(2906002)(6486002)(5660300002)(7416002)(83380400001)(6506007)(53546011)(478600001)(6666004)(8676002)(8936002)(54906003)(4326008)(6916009)(41300700001)(966005)(66556008)(66946007)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NyszSDR4RE1FRUEyZFRVekRMY1FTVG1iaGpRTXhrZ05FUk5TUVZPbk9XYWRK?=
 =?utf-8?B?OEtGRFBYd3QwZDUya2JxTHlTWWVFaDJxVW1WVjFUMEgvazlCTSt3ZXNPZW9v?=
 =?utf-8?B?a2NSZjdadDNvbHFQWE1rWi9KRy92L0l6YXJXbFRDYVhUT1RGWGNxTHVGZzhD?=
 =?utf-8?B?c1RyN3N1bFRHT05jM3Rjb0p6cTUwYTRIMlZ5OWMvbFhjaE43ZE8zM0JzQ3Zz?=
 =?utf-8?B?QndiSWRXcktWeHJYUHlhUGVuTlg3N3BTc0xsWHdlTld3M2tkbFI2WDEweWdS?=
 =?utf-8?B?QnhvbXpjNHN4ajBkc0NtUTFydHZHR3ZseUpNUEpBRE0yYjhMaDMxQ1JmN3Yz?=
 =?utf-8?B?RGdNVnhnUUE1OUZOeUdmelZrbng4Ym1YR3pkTWxpU3Z0OEQzYm9XMVVPcWZy?=
 =?utf-8?B?T3diU29pN2hhNlY0WUZKRFhoOFhBczNXallTVzQwL0V5eUtNMllJTXJlWVk0?=
 =?utf-8?B?U0JsSUl6eVBsNHI3QTFuRG9WTFlLZmU2VnN0T0R6QU5kZS9KUng1c0ZXT2hD?=
 =?utf-8?B?SG5zRW04dEs1MDZwck9PWHVLWmhoWm5Ib3ZvL2JHWHA2d3o0QXRNSzVjWDBy?=
 =?utf-8?B?Y0VmSllsS0phazc3WGVyYm43ME1JR1hSdHl5ZVJrMWhiSExqTzZITGRPWHZU?=
 =?utf-8?B?R1RIRjcxTzgzT1dDWHd2RlhmMXpaaElhRkZMaS8yczBSQmVwdUl3MmtVM3l0?=
 =?utf-8?B?bVJNa3hNTk5EVmdoTkZudjAxOVhoWEVJUXc3WFB2Q3IybXRkMVo1OGtHV2tX?=
 =?utf-8?B?Qm03bHhXUTNzd3BBZWUwMFJrakVHZzBPSDZlVFJlWWFWTXlhQVRqU0xEaWFw?=
 =?utf-8?B?eVJJakVaUWlud1B0RFVRaGlObHNIdTJtSE92My9zL2N5Ulhaam9oZENzck9W?=
 =?utf-8?B?dWtVUGZvcktrV2k3ZXRyQ3Z4alRKZlJNVFQ2SnZhV0o4bTJjc1hyczJNZi9p?=
 =?utf-8?B?ZEJ4dmxIUmtMTWV1VlFEMDI4S2orU1U4Qkd1eFQyU1phOHlaQjNkangwMkZ6?=
 =?utf-8?B?VUhUeG11TEZIZGRIeTA3Q2lOV1RIQWhYV2VMV01JU0RZN2JzYWtWK2dLT0JX?=
 =?utf-8?B?YWQraXVORkwwYTYwMHNaK3V1a1lMTUtxRE82TjhhbDdmMjF0TTFyUEJuOFZD?=
 =?utf-8?B?SkR5VXpWYlR3ek5MT2xVaHZvVm1QSXg4dkhtSGxiZFlXT2s5SmRkY0hLYVB4?=
 =?utf-8?B?L3NrVXgrUTN0WUJaOHVYQkxTY0UreGJSeFNuQ3pHbWNMSVBwaE9WbHk5dzhu?=
 =?utf-8?B?NU4wVmx0TkYzTktlVnZEUnVncDlYZ2dUaW9vRjd1RnpjMWhUVWwyaG9obEJO?=
 =?utf-8?B?QjhjcW1Eb29nUmNQVXFFRVhuakpUeUFHam9qNnR4bnpZS1gzN0F3V0JZY25L?=
 =?utf-8?B?SmZSOWxVay9XengwaXhGekJoU0d0bWQwS3pSNHJpaXJma3ZtNVltSFNLUGtj?=
 =?utf-8?B?bnU5MFJZdmsxbTVBb01MZlA5U2ovMTFKSlhRM3dHRDR4OWlRNG93WCtMYjFP?=
 =?utf-8?B?ekFyY09GQ29kV2cvM0xuN1R5WndGRTdLVk9qYnV5VmRMVzUzWFFYQ05zTFdV?=
 =?utf-8?B?djdQZHpaem5XWmZLNlRnZStrVzMvMWQ2WXFkVW5jZUx3UDNRNDh4L0ZDSnhj?=
 =?utf-8?B?aDgvZUk2TXZNWnFnSXhEa2s4SEFhQUQrUVRIUm9mOVE1d2VUL1VraVBtdGdL?=
 =?utf-8?B?SjJkeEQxRmwvbnU1SVpDUXU2QUVBbGRQcmNDME9nWEtZbUROZjY0MWNtS0dn?=
 =?utf-8?B?S2QzNi9vMUxRMTNQZ2QyMXdkS0k3Y3V0ZzNHazZxYVFMVlh5cERuZmJnSWlm?=
 =?utf-8?B?aURGc0E2MmJJWG0vTnhna1NxYzRnV2QwbVNEeFBsS0UyUUljdGZhZ25Vb0dP?=
 =?utf-8?B?RWowVHI1dnFKV0FVTmpsdWZLVVlQRmVGZ0ZRSkJZRXRxckxtbmZ5VUxWZHJ1?=
 =?utf-8?B?N3QyNDllYVlUbk5TZnMveWlKMzVnWXNDek9NTHQyNUFNdFBtQUxXRFdLY1Qx?=
 =?utf-8?B?VmN6UlZiVW8vNWFYakVUWjVTRVdlUjRrQ1dVbWZtZEJDZjZXUjIzQW45S0NF?=
 =?utf-8?B?Y0xadWtRajdpZHExTTdPWi9wbENGMGZjV3BmZzczMldWQ1VXM2ZkSUVGbHRG?=
 =?utf-8?Q?WStA6eNhQtIU3Y9yk4klkpI0R?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a672c2c7-855a-40bb-e47e-08dbda2c1e6a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 16:12:02.9098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gC8WaZsH+1aIt3ST7LpoNoRM5RCUzTblHcDg6DofOJ38MfWSaaTGb4uUPEDcxcfT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9393
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t74Wmi2XG1PDpMT/xqRNiSXdsY4mVLHUdi75n/Y/tY0=;
 b=P88gtIDtLuAnpkPYrxXer6bAPgKLKfFRKXG8rJ82gF+wTDQGAJL0iAxXS2eBkN2Gb1mZOjO5PytqZFtnBzaSBgqrz+3etckgNj+HzyDlXOJN004mtUq61Qhw2wSgNILe1RGm05mWGToqAwBMVI5C4G3PdG12TymqGu9YB7iFY0g5Onkxb3PogtMY7Al1LptGzovpgMzBOd+4ImBQOiIbRlq1aF8WZZAO/WkoerxRXZZnu9nIgXhi4ux3j/mvRQP2HGlixnVYQa6RY7947gYQ1orn6WTSJqd11pQLpBuIdZt5RdXObwiB0DkcIJkJO9pddyewdb4G2AT9n3XNHdRk3Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=P88gtIDt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 pabeni@redhat.com, Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMzEvMTAvMjAyMyAxNjo1OSwgQWxleGFuZGVyIER1eWNrIHdyb3RlOgo+IE9uIFR1ZSwgT2N0
IDMxLCAyMDIzIGF0IDU6MDHigK9BTSBHYWwgUHJlc3NtYW4gPGdhbEBudmlkaWEuY29tPiB3cm90
ZToKPj4KPj4gT24gMjkvMTAvMjAyMyAxODo1OSwgQWhtZWQgWmFraSB3cm90ZToKPj4+Cj4+Pgo+
Pj4gT24gMjAyMy0xMC0yOSAwNjo0OCwgR2FsIFByZXNzbWFuIHdyb3RlOgo+Pj4+IE9uIDI5LzEw
LzIwMjMgMTQ6NDIsIEFobWVkIFpha2kgd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE9uIDIwMjMt
MTAtMjkgMDY6MjUsIEdhbCBQcmVzc21hbiB3cm90ZToKPj4+Pj4+IE9uIDIxLzEwLzIwMjMgMzow
MCwgQWhtZWQgWmFraSB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gMjAyMy0xMC0y
MCAxNzo0OSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4+Pj4+Pj4+IE9uIEZyaSwgMjAgT2N0IDIw
MjMgMTc6MTQ6MTEgLTA2MDAgQWhtZWQgWmFraSB3cm90ZToKPj4+Pj4+Pj4+IEkgcmVwbGllZCB0
byB0aGF0IGhlcmU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsL2FmYjRhMDZmLWNmYmEtNDdiYS1hZGIzLTA5YmVhN2NiNWYwMEBpbnRlbC5jb20vCj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4gSSBhbSBraW5kIG9mIGNvbmZ1c2VkIG5vdyBzbyBwbGVhc2UgYmVhciB3
aXRoIG1lLiBldGh0b29sIGVpdGhlcgo+Pj4+Pj4+Pj4gc2VuZHMKPj4+Pj4+Pj4+ICJldGh0b29s
X3J4ZmgiIG9yICJldGh0b29sX3J4bmZjIi4gQUZBSUsgImV0aHRvb2xfcnhmaCIgaXMgdGhlCj4+
Pj4+Pj4+PiBpbnRlcmZhY2UKPj4+Pj4+Pj4+IGZvciAiZXRodG9vbCAtWCIgd2hpY2ggaXMgdXNl
ZCB0byBzZXQgdGhlIFJTUyBhbGdvcml0aG0uIEJ1dCB3ZQo+Pj4+Pj4+Pj4ga2luZCBvZgo+Pj4+
Pj4+Pj4gYWdyZWVkIHRvIGdvIHdpdGggImV0aHRvb2wgLVV8LU4iIGZvciBzeW1tZXRyaWMteG9y
LCBhbmQgdGhhdCB1c2VzCj4+Pj4+Pj4+PiAiZXRodG9vbF9yeG5mYyIgKGFzIGltcGxlbWVudGVk
IGluIHRoaXMgc2VyaWVzKS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBoYXZlIG5vIHN0cm9uZyBwcmVm
ZXJlbmNlLiBTb3VuZHMgbGlrZSBBbGV4IHByZWZlcnMgdG8ga2VlcCBpdAo+Pj4+Pj4+PiBjbG9z
ZXIKPj4+Pj4+Pj4gdG8gYWxnbywgd2hpY2ggaXMgImV0aHRvb2xfcnhmaCIuCj4+Pj4+Pj4+Cj4+
Pj4+Pj4+PiBEbyB5b3UgbWVhbiB1c2UgImV0aHRvb2xfcnhmaCIgaW5zdGVhZCBvZiAiZXRodG9v
bF9yeG5mYyI/IGhvdyB3b3VsZAo+Pj4+Pj4+Pj4gdGhhdCB3b3JrIG9uIHRoZSBldGh0b29sIHVz
ZXIgaW50ZXJmYWNlPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIGRvbid0IGtub3cgd2hhdCB5b3UncmUg
YXNraW5nIG9mIHVzLiBJZiB5b3UgZmluZCB0aGUgY29kZSB0bwo+Pj4+Pj4+PiBjb25mdXNpbmcK
Pj4+Pj4+Pj4gbWF5YmUgc29tZW9uZSBhdCBJbnRlbCBjYW4gaGVscCB5b3UgOnwKPj4+Pj4+Pgo+
Pj4+Pj4+IFRoZSBjb2RlIGlzIHN0cmFpZ2h0Zm9yd2FyZC4gSSBhbSBjb25mdXNlZCBieSB0aGUg
cmVxdWlyZW1lbnRzOiBkb24ndAo+Pj4+Pj4+IGFkZCBhIG5ldyBhbGdvcml0aG0gYnV0IHVzZSAi
ZXRodG9vbF9yeGZoIi4KPj4+Pj4+Pgo+Pj4+Pj4+IEknbGwgc2VlIGlmIEkgY2FuIGdldCBtb3Jl
IGhlbHAsIG1heSBiZSBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLgo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+
Pj4gV2hhdCB3YXMgdGhlIGRlY2lzaW9uIGhlcmU/Cj4+Pj4+PiBJcyB0aGlzIGdvaW5nIHRvIGJl
IGV4cG9zZWQgdGhyb3VnaCBldGh0b29sIC1OIG9yIC1YPwo+Pj4+Pgo+Pj4+PiBJIGFtIHdvcmtp
bmcgb24gYSBuZXcgdmVyc2lvbiB0aGF0IHVzZXMgImV0aHRvb2xfcnhmaCIgdG8gc2V0IHRoZQo+
Pj4+PiBzeW1tZXRyaWMteG9yLiBUaGUgdXNlciB3aWxsIHNldCBwZXItZGV2aWNlIHZpYToKPj4+
Pj4KPj4+Pj4gZXRodG9vbCAtWCBldGgwIGhmdW5jIHRvZXBsaXR6IHN5bW1ldHJpYy14b3IKPj4+
Pj4KPj4+Pj4gdGhlbiBzcGVjaWZ5IHRoZSBwZXItZmxvdyB0eXBlIFJTUyBmaWVsZHMgYXMgdXN1
YWw6Cj4+Pj4+Cj4+Pj4+IGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlw
ZT4gc3xkfGZ8bgo+Pj4+Pgo+Pj4+PiBUaGUgZG93bnNpZGUgaXMgdGhhdCBhbGwgZmxvdy10eXBl
cyB3aWxsIGhhdmUgdG8gYmUgZWl0aGVyIHN5bW1ldHJpYyBvcgo+Pj4+PiBhc3ltbWV0cmljLgo+
Pj4+Cj4+Pj4gV2h5IGFyZSB3ZSBtYWtpbmcgdGhlIGludGVyZmFjZSBsZXNzIGZsZXhpYmxlIHRo
YW4gaXQgY2FuIGJlIHdpdGggLU4/Cj4+Pgo+Pj4gQWxleGFuZGVyIER1eWNrIHByZWZlcnMgdG8g
aW1wbGVtZW50IHRoZSAic3ltbWV0cmljLXhvciIgaW50ZXJmYWNlIGFzIGFuCj4+PiBhbGdvcml0
aG0gb3IgZXh0ZW5zaW9uIChwbGVhc2UgcmVmZXIgdG8gcHJldmlvdXMgbWVzc2FnZXMpLCBidXQg
ZXRodG9vbAo+Pj4gZG9lcyBub3QgcHJvdmlkZSBmbG93dHlwZS9SU1MgZmllbGRzIHNldHRpbmcg
dmlhICItWCIuIFRoZSBhYm92ZSB3YXMgdGhlCj4+PiBiZXN0IHNvbHV0aW9uIHRoYXQgd2UgKGF0
IEludGVsKSBjb3VsZCB0aGluayBvZi4KPj4KPj4gT0ssIGl0J3MgYSB3ZWlyZCB3ZSdyZSBkZWxp
YmVyYXRlbHkgbGltaXRpbmcgb3VyIGludGVyZmFjZSwgZ2l2ZW4KPj4gdGhlcmUncyBhbHJlYWR5
IGhhcmR3YXJlIHRoYXQgc3VwcG9ydHMgY29udHJvbGxpbmcgc3ltbWV0cmljIGhhc2hpbmcgcGVy
Cj4+IGZsb3cgdHlwZS4KPj4KPj4gSSBzYXcgeW91IG1lbnRpb25lZCB0aGUgd2F5IGljZSBoYXJk
d2FyZSBpbXBsZW1lbnRzIHN5bW1ldHJpYy14b3IKPj4gc29tZXdoZXJlLCBpdCBkZWZpbml0ZWx5
IG5lZWRzIHRvIGJlIGFkZGVkIHNvbWV3aGVyZSBpbiBvdXIKPj4gZG9jdW1lbnRhdGlvbiB0byBw
cmV2ZW50IGNvbmZ1c2lvbi4KPj4gbWx4NSBoYXJkd2FyZSBhbHNvIGRvZXMgc3ltbWV0cmljIGhh
c2hpbmcgd2l0aCB4b3IsIGJ1dCBub3QgZXhhY3RseSBhcwo+PiB5b3UgZGVzY3JpYmVkLCB3ZSBu
ZWVkIHRoZSBhbGdvcml0aG0gdG8gYmUgY2xlYXIuCj4gCj4gSXQgaXMgcHJlY2lzZWx5IGJlY2F1
c2Ugb2YgdGhlIHdheSB0aGUgc3ltbWV0cmljLXhvciBpbXBsZW1lbnRzIGl0Cj4gdGhhdCBJIHN1
Z2dlc3RlZCB0aGF0IHRoZXkgY2hhbmdlIHRoZSBhbGdvIHR5cGUgaW5zdGVhZCBvZiB0aGUgaW5w
dXQKPiBmaWVsZHMuCj4gCj4gSW5zdGVhZCBvZiBkb2luZyBzb21ldGhpbmcgc3VjaCBhcyByZWFy
cmFuZ2luZyB0aGUgaW5wdXRzLCB3aGF0IHRoZXkKPiBkbyBpcyBzdGFydCBYT1JpbmcgdGhlbSB0
b2dldGhlciBhbmQgdGhlbiB1c2luZyB0aG9zZSB2YWx1ZXMgZm9yIGJvdGgKPiB0aGUgc291cmNl
IGFuZCBkZXN0aW5hdGlvbiBwb3J0cy4gSXQgd291bGQgYmUgb25lIHRoaW5nIGlmIHRoZXkKPiBz
d2FwcGVkIHRoZW0sIGJ1dCBpbnN0ZWFkIHRoZXkgZGVzdHJveSB0aGUgZW50cm9weSBwcm92aWRl
ZCBieSBYT1JpbmcKPiB0aGUgdmFsdWVzIHRvZ2V0aGVyIGFuZCB0aGVuIGRvdWJsaW5nIHRoZW0g
dXAgaW4gdGhlIHNvdXJjZSBhbmQKPiBkZXN0aW5hdGlvbiBmaWVsZHMuIFRoZSByZXN1bHQgaXMg
dGhlIGhhc2ggdmFsdWUgYmVjb21lcyBwcmVkaWN0YWJsZQo+IGluIHRoYXQgb25jZSB5b3Uga25v
dyB0aGUgdGFyZ2V0IHlvdSBqdXN0IGhhdmUgdG8gb2Zmc2V0IHRoZSBzb3VyY2UKPiBhbmQgZGVz
dGluYXRpb24gcG9ydC9JUCBieSB0aGUgc2FtZSBhbW91bnQgc28gdGhhdCB0aGV5IGhhc2ggb3V0
IHRvCj4gdGhlIHNhbWUgdmFsdWVzLCBhbmQgYXMgYSByZXN1bHQgaXQgd291bGQgbWFrZSBERG9T
IGF0dGFja3MgYmFzZWQgb24KPiB0aGUgUlNTIGhhc2ggbXVjaCBlYXNpZXIuCj4gCj4gV2hlcmUg
SSBkcmF3IHRoZSBsaW5lIGluIHRoaXMgaXMgaWYgd2Ugc3RhcnQgbG9zaW5nIGVudHJvcHkgd2l0
aG91dAo+IGV4cGxpY2l0bHkgcmVtb3ZpbmcgdGhlIHZhbHVlIHRoZW4gaXQgaXMgcGFydCBvZiB0
aGUgYWxnbywgd2hlcmVhcyBpZgo+IGl0IGlzIHNvbWV0aGluZyBzdWNoIGFzIHBsYWNlbWVudCBv
ciB1cyBleHBsaWNpdGx5IHNheWluZyB3ZSBkb24ndAo+IHdhbnQgY2VydGFpbiBmaWVsZHMgaW4g
dGhlcmUgdGhlbiBpdCB3b3VsZCBiZSBwYXJ0IG9mIHRoZSBpbnB1dC4KPiBBZGRpbmcgZmllbGRz
IHRvIHRoZSBpbnB1dCBzaG91bGQgaW5jcmVhc2Ugb3IgYXQgbGVhc3QgbWFpbnRhaW4gdGhlCj4g
ZW50cm9weSBpcyBteSBwb2ludCBvZiB2aWV3LgoKVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgc3Vt
bWFyeSwgdGhhdCB3YXMgaGVscGZ1bC4KClRob3VnaCwgaWYgYSB2ZW5kb3IgY2hvb3NlcyB0byBp
bXBsZW1lbnQgc3ltbWV0cmljIGJ5IHNvcnRpbmcsIHdlIHdpbGwKc3RpbGwgaGF2ZSBpdCBhcyBw
YXJ0IG9mIHRoZSBhbGdvcml0aG0sIG5vdCBpbnB1dC4KCk15IG1haW4gY29uY2VybiB3YXMgYWJv
dXQgbG9zaW5nIHRoZSBhYmlsaXR5IHRvIGNvbnRyb2wgc3ltbWV0cmljIHBlcgpmbG93LXR5cGUs
IGJ1dCBJIGd1ZXNzIHdlIGNhbiByZXNvbHZlIHRoYXQgaWYgdGhlIG5lZWQgYXJpc2VzLgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
