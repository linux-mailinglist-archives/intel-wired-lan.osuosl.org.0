Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E5981A60D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 18:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73ADC42048;
	Wed, 20 Dec 2023 17:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73ADC42048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703092311;
	bh=WKCNEY/ca2ezLxrVcfL5+L8I2J24gfB2BbHEFrlP3IE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ezTKPGW+A/0vP1yZYhNFj2Uib0FmZFsJYeSbCJYcadvziqXdNx+37rhKziMgBHpAh
	 R9lzVFbBp9wgz8+35Rrt4OcUwK1vv4r+dNtMQSYWCQjfR4+4cJ7QnuAIKAAdKbvn+i
	 u2KNwJyEcq2p54JcgvN8DM0mxLoas/zvrHNUKgoORSLGrHU/hyFcgF4fhiwBk1RoJe
	 WaVy6DUq0XcMQVqsjDkmWN/zR0HzZRfTnpPD9L5Smh5YqMnCSGl9bccWAeemq+LBp8
	 lU4TFhG+Gsdrq1RBjGBcujZa8YgFokC0aiN7L+FcmD94ncKKZz1ssj0q4i8uAq0vb5
	 kqg8RiTgWoC/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TlaqREkxLGoi; Wed, 20 Dec 2023 17:11:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39BA741EE4;
	Wed, 20 Dec 2023 17:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39BA741EE4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C37F1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 17:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 099336107C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 17:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 099336107C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kaCAXOrkhSh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 17:11:43 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2051.outbound.protection.outlook.com [40.107.244.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ED2361077
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 17:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ED2361077
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CprnMbzaoQD0cESXMUhNmKouj522P5m2qxofpPh4JRPAuHw3ux2JUf/bhc/8qd4dah0+P0/DQ9+aEBAPtuZoe6tm7+ua3xRJN7D+ljpLF0Ddt7dC01xvYAMmssuvuqddNjxBw9MS2pEeLyo0s92dIYmhS09w3vblR63fQPyoiEahKw5XS/CIyxCLoshdtL2sJKy3mGpc3HEV2nqfG8loBVnw8c2ByeIdX6zGwGLsFYh6lZ6/V3J2iNGZZJ+thugSQ85/QfCkRiD+UkRKgvpetW45U6zCVZyTSWugKZXdOdAw8vNoPXXOLChTMCLkbimp552+4uyPB3/C5Phfo/yaTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqs/Q7Pk2GFNBdkzm3zkFnacNoKdX760a0mXRuP+L7M=;
 b=gGYHOrsJW6O5J7k9Q/cSi7zXqR0sx/qGAmLLUbqVJfZHvWRz2DHCtBbQtj3l4efvwYSq8aQfB5cF9UPM/jKqsjHKd++US+gPFWqWVETHE6TJnl//ptmAVc+Aw7f+LyA2G6aFU2/mBy/k3fwIfkQX5FAAVtvTPlCQsQvm7f8FbrmfG2nVOd3woTsiW1mCqDCzqEveRyX5AiJL1MWXvOQhpOe78yaEsBbB6LyL4KwaQNcYipilvxiHbZojTQIfdIhstaZT1MDuY0j5pwz/204jg9oLZ7CRD7wQoQkmOjpeSSx4ts3YzES/5c2QTSrbltDFbZuqX887wYQg7THcaSA5WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by CY5PR12MB6105.namprd12.prod.outlook.com (2603:10b6:930:2a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Wed, 20 Dec
 2023 17:11:40 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615%5]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 17:11:40 +0000
Message-ID: <28644ecc-24a1-8155-e6e8-c75a2bc64356@amd.com>
Date: Wed, 20 Dec 2023 09:11:38 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Plachno, Lukasz" <lukasz.plachno@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231214043449.15835-1-lukasz.plachno@intel.com>
 <20231214043449.15835-3-lukasz.plachno@intel.com>
 <693fb63e-8369-9cf7-4b41-7afc00b30618@amd.com>
 <bf21c58e-a857-4096-932a-cc9718ab9779@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <bf21c58e-a857-4096-932a-cc9718ab9779@intel.com>
X-ClientProxiedBy: BY3PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:a03:217::16) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|CY5PR12MB6105:EE_
X-MS-Office365-Filtering-Correlation-Id: a1f3ea9e-7a1e-49d5-6f02-08dc017ebb58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vu4PXE4AXPmN1ulWpHWv+GyBo4TWzHKOIrxx3fdzqyKYOnb6pNqbnnjlMCH5kN0g6pAPKTlfkeBA1sznERN7qaoeXFIiaaYA0NrfvkJP/JiJNoOphl9QTUreUYB3VXhq7aj0H3VMbksCIbY+2SQvvwxKo9oAT2I0hMQ59fnAEqlJTSO+slBvqiuQ2lnCvIK+YKdP2YVERMNd3ohcfNU7N7bpLmWiRM1MMp+T2QsT56b16ghu9+7rgVE/qM8ewM+efNP5DZ83p5vFCWqg6RJ/p/v51ZcumGgonWFm5PTXFcZQTknUfNuPDpPdVmH4bOuzrSduL4QyyuZCnHjml0VQQc/9tXQh0UHQ5TCwA1SnDqUYUS8mRhTgEGyfEuwe/l1ge+qNDGx3E4aLzHWpccO133eTpj8ep5e/hL8iTAASLEJr94MHS3I/D0OJiJhbTln9mSxCPSwckA5bPC+/j2aQwr1LGw1oXlmGYzBVM20jPTwS26L1rj+DnDpN3xL1UIgYAkEHCLf6W4kuWG7rxCupQFAY4/FhYDKMZu+TDbvkNKRn/0FgTtiy2EZ68rKZEcG5Lqq1FVRo60ssT5rrPrKvgf1NJ/WFHQST45U8mkZweNp+4Pg8w9A7qaeVthnhVcnXJJTf5JQtl/aKc3wMY1y6HMpXxcvisq4YyzWfbrvc0ZhRprkMYgyGoJh5g5/qtpCF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(376002)(39860400002)(366004)(230273577357003)(230173577357003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(5660300002)(31696002)(36756003)(41300700001)(38100700002)(478600001)(53546011)(6486002)(26005)(83380400001)(66556008)(66946007)(2616005)(66476007)(54906003)(316002)(6512007)(31686004)(6506007)(8676002)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alplN2JQZGVFSHBuTlAyVHNQNnpBeDJtWUN3ZHFCRDNtaGJ1VEwwck9nUzF4?=
 =?utf-8?B?d08ySW96RkdvdWREVisvWDgxZUYyMTl1NTVmVHR4OFhXOVY1Smw2dGJscXkz?=
 =?utf-8?B?bWhCMUlONHU0dE9hNEt4TDlLSWxRVUtxRHFQWk1BNzRJYUpTbWNXT0s5dDZT?=
 =?utf-8?B?RUEvK0tNL2tWMjd1cUQyOTB5Wkd4UkZ2OWdMa28vdlVWWG9qZnZYL3oyMHUv?=
 =?utf-8?B?Skl0aEk3OU51ZnExQnk2aXpRNGFvcVlSTTBtZEJzeGxPbndJRU1nTUEybW1o?=
 =?utf-8?B?WkRNbmxjTXNnZlY5R0Y0UFp6UzNEb3NUS1FnN3F0ME9kdlQyM1MyeWlFdjdW?=
 =?utf-8?B?MXZER3VHTGxyMEtpMHhHa3lvVUo1Z2FEZjU0a1A3N3grUlRVV0UzUFhFNzR4?=
 =?utf-8?B?YVFITkRtUURPb2pRL2F6NWtuRU16Z2tCL2t1NEJaR0lIdlhhSm4rUHRjempr?=
 =?utf-8?B?R0NpTWhyMHgwdW5PSStsWEY5WGhsdnBIQXY0ckpXTEo5NkIrVmM2UFJ0SVNn?=
 =?utf-8?B?MUd0dm1wSUpBNHByS21BL2FFbkNoWEREbEJXdmVEUHN1Q0hkTS9vUWY5Vjd2?=
 =?utf-8?B?RVlNR0xTdFpsUjBTcWdLcXhHZmdaNTUvcUZTV1ZLckEwWFhGdU1DVTIydmhL?=
 =?utf-8?B?bmVGZyt4NHdBZGxjaTJJZmMxNDdBWEs0VFZkRGkvNyt5WUdTdWZwbzFBM3dj?=
 =?utf-8?B?elh6NWNaNE5PbFlla2RIWTRmMHRrUGZKRzEvWWNYMElreEQxb2dxZXFiVFZv?=
 =?utf-8?B?QjJpeW5aNlFiUm0rVFA2ek9jZ1BRelAwYktxdnFCWUN3VytXTldXd1pFdm02?=
 =?utf-8?B?UlB0T2Z1eGxwSU5Xd2p3OERQSGRkUERmTXpjTXZEc2ZNZVJBVjlpS3RzTFRu?=
 =?utf-8?B?NVJudU90VW53a2JVUW9DUTQxcGt3UzFNcXVqQmFoR2xSdHdiSUJoMlZPZHFW?=
 =?utf-8?B?NnVqZDhHV0tjVVlIY3RPVGVoSVVIQ0FwelljcHJkejZNMFpmSWl2b1pkZkJX?=
 =?utf-8?B?L3BySnV5UzZHNTUvZzNneW4yWUdLYVA2VzcyUlRqZTg4N2k5d2RNZE9qRWlM?=
 =?utf-8?B?anEyV3pWVU5COEhPTXNTTHRhL0ttaVJVMmd0ekZnS2ozSnJJTzRFZXdDaEpj?=
 =?utf-8?B?OUVpSnlyY1ZwUllUYm9PQ3dEYml3dVVHYVdIUWpoMjV5UUlMSnAxcG55Mlgr?=
 =?utf-8?B?bkhiRlZVYm1tK1lQdlNrVldtMUMrNzZSUkM5Q25BWTdyMHNnSlVsMW5hYVZI?=
 =?utf-8?B?ZG43ZFNZck92MkRmbDNGWkczSjF4SHh5L1d0OWkvYmNOUzJ1bEN0VWlrV2sx?=
 =?utf-8?B?MlQxSzZHSk9ZaktuNmxRdUJ5OVArVnJNNEJBZk1PUmFYOEhSQmZzUDhyOXQ5?=
 =?utf-8?B?alRwTGFGM0ltNnNYSkQ1NG5oeUQwRVRmYnJGamVXL1oxeDdhb3JRRkc5ckE3?=
 =?utf-8?B?TkpkdFN1aStXWnVScGdueFNNaFBRODFWNUtRWEtGU0lsN0RDaFhsYW9RT1Ay?=
 =?utf-8?B?YVBIN1k0cmo4VkQ1dmRwdit0a2JMWnQxejFpU3pyOFRqR2tMM0JWVkx0YVRs?=
 =?utf-8?B?Qmt3dHlId21CV0pnRkR2Mm9qdzhvbEt5eDRUM3JKR2N2cDBhUTF0SWYyM0VV?=
 =?utf-8?B?UnNTdTdRZyt1VjExNVlodmJjQmRNNERPME16U1k2NHh1bEVpRFFLbUhNTWFH?=
 =?utf-8?B?L3VkSjZjODExSFlieHozRTdnT2pILzZ4NWFpaExSMDI0UkdvOFJ5S25Jclhw?=
 =?utf-8?B?RW5FQnQ4RjhVeVA5S01oS3ZLT3oxckt5RkhqU2xZM3ZXdURxMU8rUFpWVG1q?=
 =?utf-8?B?SkRSVndqQlpCMlVORHBneUxzclNNdjRrTFQwamhPZ2VaYVVoQXA2ZXBGMWpu?=
 =?utf-8?B?eTFzQlVVdXp5NDVwelJLb3JaYjljL0JRZmFGeHM0QXp6VEt1RzRWTTNEd1FZ?=
 =?utf-8?B?U0lFVXQ2dDhQaGlQZ1IrRk1WQVh6WTR5M3BweFQycFZEMEhLM1ZJVk9GVjRn?=
 =?utf-8?B?ZXI4ZFBPSmhFL0pIbXJmSVFUWWpoSVlRdWZ5OVRxZGZ3RXlYSVpqVkF4aGY0?=
 =?utf-8?B?SmZyMkU4OXBnMGd1bVlBenJyd3dkc2lud3NlSUhOMTl1Q1NNMGtqbEN1Z2tk?=
 =?utf-8?Q?+kUz2nSuH4U4IpzQCFFyMtrzJ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1f3ea9e-7a1e-49d5-6f02-08dc017ebb58
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 17:11:40.2011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: emLU+LmC5cnC6PU6juWbJwB6P06iZ/nrBRqVh7eE4ll3MZajkTXJ2O4KNRgMgPfjhO21Ku9VvhAAr7EBtaeFqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6105
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqs/Q7Pk2GFNBdkzm3zkFnacNoKdX760a0mXRuP+L7M=;
 b=tU2u2belv/9qCG0V2VjbgBZhU11Zc6JNxcuhA2D+aIEAdjMLimeGYUDkj4804mvG/hsmtz1/iiyP9SBWVhQodlYbEMzY446V8S3FKSJTTDJiRydFXTG3zY+rB5WAEugoRugYHNAQz/kgA1IXIsWTWf+b33GQeDI5l8k75o21iRM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=tU2u2bel
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMjAvMjAyMyA2OjE5IEFNLCBQbGFjaG5vLCBMdWthc3ogd3JvdGU6Cj4gQ2F1dGlvbjog
VGhpcyBtZXNzYWdlIG9yaWdpbmF0ZWQgZnJvbSBhbiBFeHRlcm5hbCBTb3VyY2UuIFVzZSBwcm9w
ZXIgCj4gY2F1dGlvbiB3aGVuIG9wZW5pbmcgYXR0YWNobWVudHMsIGNsaWNraW5nIGxpbmtzLCBv
ciByZXNwb25kaW5nLgo+IAo+IAo+IE9uIDEyLzE5LzIwMjMgNjozNSBQTSwgQnJldHQgQ3JlZWxl
eSB3cm90ZToKPj4KPj4KPj4gT24gMTIvMTMvMjAyMyA4OjM0IFBNLCBMdWthc3ogUGxhY2hubyB3
cm90ZToKPj4+IENhdXRpb246IFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVkIGZyb20gYW4gRXh0ZXJu
YWwgU291cmNlLiBVc2UgcHJvcGVyCj4+PiBjYXV0aW9uIHdoZW4gb3BlbmluZyBhdHRhY2htZW50
cywgY2xpY2tpbmcgbGlua3MsIG9yIHJlc3BvbmRpbmcuCj4+Pgo+Pj4KPj4+IEZyb206IEpha3Vi
IEJ1Y2hvY2tpIDxqYWt1YnguYnVjaG9ja2lAaW50ZWwuY29tPgo+Pj4KPj4+IEFkZCBzdXBwb3J0
IGZvciAnZmxvdy10eXBlIGV0aGVyJyBGbG93IERpcmVjdG9yIHJ1bGVzIHZpYSBldGh0b29sLgo+
Pj4KPj4+IFJ1bGVzIG5vdCBjb250YWluaW5nIG1hc2tzIGFyZSBwcm9jZXNzZWQgYnkgdGhlIEZs
b3cgRGlyZWN0b3IsCj4+PiBhbmQgc3VwcG9ydCB0aGUgZm9sbG93aW5nIHNldCBvZiBpbnB1dCBw
YXJhbWV0ZXJzIGluIGFsbCBjb21iaW5hdGlvbnM6Cj4+PiBzcmMsIGRzdCwgcHJvdG8sIHZsYW4t
ZXR5cGUsIHZsYW4sIGFjdGlvbi4KPj4+Cj4+PiBJdCBpcyBwb3NzaWJsZSB0byBzcGVjaWZ5IGFk
ZHJlc3MgbWFzayBpbiBldGh0b29sIHBhcmFtZXRlcnMgYnV0IG9ubHkKPj4+IDAwOjAwOjAwOjAw
OjAwIGFuZCBGRjpGRjpGRjpGRjpGRiBhcmUgdmFsaWQuCj4+PiBUaGUgc2FtZSBhcHBsaWVzIHRv
IHByb3RvLCB2bGFuLWV0eXBlIGFuZCB2bGFuIG1hc2tzOgo+Pj4gb25seSAweDAwMDAgYW5kIDB4
ZmZmZiBtYXNrcyBhcmUgdmFsaWQuCj4+Cj4+IFdvdWxkIGl0IGJlIHVzZWZ1bCB0byBoYXZlIHVz
ZXIgZmFjaW5nIGVycm9yIG1lc3NhZ2VzIGZvciBpbnZhbGlkIG1hc2tzCj4+IHN0YXRpbmcgd2hh
dCB0aGUgdmFsaWQgbWFza3MgYXJlPwo+Pgo+IAo+IERvIHlvdSB0aGluayBhYm91dCBzb21ldGhp
bmcgbGlrZToKPiBkZXZfd2FybigiRHJpdmVyIG9ubHkgc3VwcG9ydHMgbWFza3MgMDA6MDA6MDA6
MDA6MDA6MDAgYW5kCj4gRkY6RkY6RkY6RkY6RkY6RkYiKSwKPiBvciB0aGVyZSBpcyBhIHdheSB0
byBwYXNzIGN1c3RvbSBtZXNzYWdlIHRvIGV0aHRvb2wgdG8gcHJpbnQgaXQgdG8gdXNlcj8KClVz
aW5nIGEgZGV2X2VycigpL2Rldl93YXJuKCkgd2FzIG1vcmUgYWxvbmcgdGhlIGxpbmVzIG9mIHdo
YXQgSSB3YXMgCnRoaW5raW5nLgoKQnJldHQKPiAKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKYWt1
YiBCdWNob2NraSA8amFrdWJ4LmJ1Y2hvY2tpQGludGVsLmNvbT4KPj4+IENvLWRldmVsb3BlZC1i
eTogTWF0ZXVzeiBQYWN1c3prYSA8bWF0ZXVzengucGFjdXN6a2FAaW50ZWwuY29tPgo+Pj4gU2ln
bmVkLW9mZi1ieTogTWF0ZXVzeiBQYWN1c3prYSA8bWF0ZXVzengucGFjdXN6a2FAaW50ZWwuY29t
Pgo+Pj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBQbGFjaG5vIDxsdWthc3oucGxhY2hu
b0BpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ldGh0b29sX2ZkaXIuYyB8IDEyOCArKysrKysrKysrKysrKysrKy0KPj4+IMKgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jwqDCoMKgwqAgfMKgIDI3ICsrKysKPj4+
IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5owqDCoMKgwqAgfMKg
IDExICsrCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaMKg
wqDCoMKgIHzCoMKgIDEgKwo+Pj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAxNjYgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pj4KPj4KPj4gWy4uLl0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
