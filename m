Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA8D7DCF8C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 15:45:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 603E842C62;
	Tue, 31 Oct 2023 14:45:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 603E842C62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698763554;
	bh=aUI5mNwpyuqcbIqGlXawb7jG+5nwx6TEQik24u3Z/xs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bl3lO8z/uOjWROBqNaLZLJHT+MvDFB0+bcT+dMo2H7TRb4aOCf5IMs4+f9KLLOVfR
	 cCDlVcvWpMtPWE0OmFPP927LavZi8+evq3yaWekunIicPxCnFWe/42dsSvIRnCESmt
	 sAHzfaUNNYxxFT4hdZ89zZ0mL/nAMYx8O3qepfdZdciq70t7cw/iaO1Kozb1cDzFaE
	 F/eBJHaZVptuXVEjiBAjEyS7jh1hNJasSpfwTLCJRewz17rCkNfyDXaZDtTfNevoQK
	 UM+98RJUeALShRZn3UMNXiZ14uogfForjrRnY6wlI4XgsgXY2jz9pWD5IdLof+J1rj
	 4aYWAj5kfGJPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ev2hVlEw0VK9; Tue, 31 Oct 2023 14:45:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B073842E7A;
	Tue, 31 Oct 2023 14:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B073842E7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C61A91BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA23782BA7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:45:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA23782BA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B1KjOfXD2_IM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 14:45:44 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C8EE82A72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 14:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C8EE82A72
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C76bQhVs/eNeA4lDtFP7wq1KUxaYbE7iWqly4YHgaAFu4j6o4zzd0vNCLKtHdhagh55MUcjNbTieJ6ma6DEi/RKchl+brPOpRu9Kvz5uqLPktGsyUYiBBZ4cmDQqjZ1/lpwVGjq3ToTdMLcCfKBRSEEaZuP8o3/uCzlUCZbVvJlgPNjMnHlIfKomuBAwFq5mafXHCvTUdOkKR2ouwvdqerA16+sY7F0Hv8C5+MfIfrzPRTOfv4xGPIDIp2+C8qhxKVWBkQeEkxUF9eYm/LRsKCB3BNSSfQv6Uv0VjmqRMSB9GBHDt8sqHVOfdbxFvNGwrMBW2o7HDrxtvWQG6pthnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npQeRcDcBwpoHGxzLwJrIL/Rzfo0Fa0GkrQPXLsXu0k=;
 b=Frt33ZhnW+MU+Rik6/UCvPKGHbviTcZDxxjEwvUv97FfytbfAWQqRs7JaOgN3f7tt1lR6K7sS+aqeUjFK8zrnmrzdsWxN6nQhlwW2Lj2X1Su5kbq6FO39pZXYIWQyGNNec1qBlL9ty+nR77c5Ghg5ooVm02bSruGvxpgad49cFMyH/730iz5V8pD0HIinceJoxqgKQkUej8vPqvislaw0Hhr9ap0bRC+AwM0SneoM1VgOfR06PND0EPCP/nHKRZ2/bsZ9/NQW2clHnSNw56gL1IJ6IqYGx4ZCaTjZTwMkv8XOBhPwumehntA6rgFS190uEvxbf+kkum990twXSLd8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 DS0PR12MB8248.namprd12.prod.outlook.com (2603:10b6:8:f3::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.24; Tue, 31 Oct 2023 14:45:42 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 14:45:41 +0000
Message-ID: <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
Date: Tue, 31 Oct 2023 16:45:31 +0200
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexander H Duyck <alexander.duyck@gmail.com>
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
 <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
X-ClientProxiedBy: LO4P123CA0623.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:294::18) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|DS0PR12MB8248:EE_
X-MS-Office365-Filtering-Correlation-Id: 59432015-67f4-4857-90bf-08dbda200e1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xR6NzK4pMYvlt7juNDGW9LIPTBeN924E2ELDOnb1/QymdfDSE4YML0qWDY4Kbh/uM8dPiY1dhoLTapINRqhXHeMg8E6QbkQVfEXngSFuf9YYMzLOd5TeMMd4awxuKgSIiJvOBm4Whl8NIEN1WH8UUTQMPj+GAEY/Sjq/qxDPgFe1NpISgsGLKF1ZQDAJwggo6gbXr7DDpfkvrV0FRwstncBnbYCvNyiL1haN1R4sK2wbBidgE9n8Y+zYqtQ6svZ8GFVWp7AjvVB1yooG/WT5IplXoCG21w0NmgDAKV1WOxQIeGZmm1JDtGWITWTUDQIUV93gJs0cVDo4l4tpdiNU03hkKRHn1K8pp5hcV12P9PP8wG/IOsvhesvzUJ+6Narkdml5qZ0Rdf6OHl+R1jCBVD7/yVbtdCvpQaHRZpv3bsOvhyzNmSG6Vgxfp7nEhv06ovJMeBfb5v0R9AAeSqCQvvvDkbetc5qZG8g27WaWhFo4P598bqektbCBlCBo3nVQ+gIN2zXSBLy39bcn8xC+p4Ga9lIlsWHYZhA6iI/R1bF8ly0tqE9RV20eTDHVkjjAUBk/IrfhZE6uhsgKoE/waDeZgsRWzA/z9k0cA+khLjNDnJveVv/9mUwrmgowkoUgTSeXcT9A9lgeQylt+7x8yNNyuqiMUAvRoP4Q+ZmfiIKvYHko27s4vhEcZxvpI/TV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(136003)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(38100700002)(31686004)(66946007)(110136005)(66476007)(6506007)(316002)(54906003)(66556008)(966005)(6486002)(478600001)(2906002)(6512007)(41300700001)(4326008)(8676002)(5660300002)(6666004)(2616005)(31696002)(4001150100001)(86362001)(8936002)(53546011)(83380400001)(7416002)(26005)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2xXZzk5RGhtclh4MVNmdHJaZmRWcVlpRk0yQXN1a2ROc2QzOEVNSmdtZkN3?=
 =?utf-8?B?ZEhzYWdWTVgyNEQ4V1NkWjdOWEhLRnVNbWlzbFNlRytPdFgxNDV3ZVNpRlZX?=
 =?utf-8?B?VHByMEZuUXpLUG1FVWFXMlB5RFhBbFZuQ2xYWFdPMzlaV2FETlM4d0h6VUF0?=
 =?utf-8?B?bkFEZEZDd1pxbHdMVFMxTXhVUzlRRndQUGhWcXMvWmlleXFCcEgzVGRTckFX?=
 =?utf-8?B?TW1XNGl0dEJScU5aZTl1VGNWM1RuZGZVVVcwSytnUWQyL2lJVk1qakhPcWY0?=
 =?utf-8?B?bm01b2ZURUVBdFY2MmZxcDZYcTlveDhGN3dkdWdMWVlqYXJ2R2ZHd2F5SkM5?=
 =?utf-8?B?TnY5MFlsMzVVY3VkZXQ4b0xkSXZ6Unc2MkxBYnplVFE1cmN4d2J6QW1oMW9z?=
 =?utf-8?B?R21Eb1VkcUZ5Q0lpTjUyV21CeDFEMXRUVUJHMGtPWUVKSUR4ZnRTc1E1NHRG?=
 =?utf-8?B?TTZ6OFN2UjdiaU1USHlDYWd2SVA4MUIzUWt5Z2FsU1JGdDNHSGVYYVZwcVNT?=
 =?utf-8?B?MTB1cnhVUnpGNmN4YkFCbFl5NGR0S00rejhhSndMdHhPbXFxbXpmYkhWWXJl?=
 =?utf-8?B?YlRRbUZPcnJhblVDY2x1SzA2NUlLU1VRNEZkeFNtdkJ0U0VYSzN5OWNKZzVQ?=
 =?utf-8?B?S3l1T3J0TlpETzFpQ3p0VHlvYkdEKzQwdTVtaDlMTmhaSHM0U3ZpZm9Yc1FB?=
 =?utf-8?B?ekkxVU5GaS82cVljaVhjY2F3eHBmOC9aelg5WnA2cjdIbC9GT1I2b0F4VEtC?=
 =?utf-8?B?UFUxeFNqNGVqWWVIbjY0dU1IQThTdStkLy9UUS82MnFVRkJET3B2Y1hPbVRy?=
 =?utf-8?B?cDJRdDJxbUVwLzJXMi9rS3JGSW13ZDJYSWhhS0dIZ28xYlZzYUVXTzFycElR?=
 =?utf-8?B?bXN0V3p4ZUpLRXFCbDVnNnl2VzZzTUdCcUJuRWVCaElsL0tNNTJUbUpYZml5?=
 =?utf-8?B?NEpFR1Y0d2Q2VFNIdWZTRzF4WHMweHVVNWsvelhnbjNzS05xQ0daVVgzdFFN?=
 =?utf-8?B?UnFWYVlpWlBxdzR0Tm1EWVdXV1R3RHRNVWxkTnBrV3BGSFB0K3ZWNU83YUk2?=
 =?utf-8?B?TitYbjJkb0c4ajJKSlBPczVaRThWVk9KUUZ6R1JFWEhUNDEvQkp3T0pJcWRn?=
 =?utf-8?B?ZlBZRS8yUFJraTUxeEhQcDY5aGM5SklmbW82eEFnUGI4eFl4SVh2UDVQZmhH?=
 =?utf-8?B?QTB6MFRRMmQzNEVBY2JyRS9oUUFiTjZxWDZFRitkMk82TlNDRDRndXFMb0h6?=
 =?utf-8?B?SUFna3U5Wkd0RmVBc1NtcHE3SHpNVFVsTlB0WjhocSt5V2RvRDJPSFFTbTU4?=
 =?utf-8?B?SWJnWS9VMWhUOFVQWVJ1NGp2eWtqUnEwcUQ0UzR3VExFdlZSaHRQYWd1clBD?=
 =?utf-8?B?QTZ3Z3hOdlgzdW9sbU9iQ1JkYmt6LzVBZXNPczhQL0JsRHhVRkRDR0NhQVhE?=
 =?utf-8?B?OXNOdk1IYmJzdS85OWFjaUNOWXJGekRiTzgvOU05NFNFa1c4ZmI0QllldVdm?=
 =?utf-8?B?SUZUSmJVWngzbkFPVXM5b3RhbStpcjVYdkl0MGxSbTJJcWUxSWF3dTNaUFN4?=
 =?utf-8?B?K0xvNitGK2Y2ckRtWTlpNVpTV3ZvWEpjeVU3UUk5SHZOVmUxSjgzbzdGakty?=
 =?utf-8?B?LzkrYktCR1pNUTZVRlJPS2I0Zkt0OHFiSVRMRzNHMW9pd0hnWlJoT09tdy9C?=
 =?utf-8?B?RGdOc1I3ekQ0dHgwYVR0eGpaVzJPWUZVamRMZmFqMCtKR0dwalM5Qmd5SE8w?=
 =?utf-8?B?aE5EemMwSUFiK0R3aEticE1VSlZrSGljZXZxKzYyZmlBUmpkempGVXdXYzVL?=
 =?utf-8?B?ZmZyRDRLdGYySm9oc00rY210bCszdHBxcEQ2aWNhZ1ZreFhubHJlamxmY0Qx?=
 =?utf-8?B?bjcyWjZRalFkb09NdVZiN28vaHNHSGxwTjVlRkJPdUxSZytiNWRQUnNRVVVs?=
 =?utf-8?B?MGZkbHlsZHdkSVdCRVAvT0MyRWd4NVorMGVVdUIva295SVhRdVVvUndFUDNU?=
 =?utf-8?B?RDJyRWxqeFhuR2cxbGdyMVVxVGFNeVFHL1JHL0s4R3pEWkppdzBtSllZYlV2?=
 =?utf-8?B?aEorQ0RzVFNKcXVhdkhaNmh6MWljSzQzS0U3ZlNDMWYzc0M2UnQ2Y1c3dUps?=
 =?utf-8?Q?ECsFgZt97G4JVSxgxdCJqxVgv?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59432015-67f4-4857-90bf-08dbda200e1e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 14:45:41.6184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0MLIqNZYgsl9ZYUi1TLKzlbS9vCrOjNYpB6zY2oiy6R3nyNla8HiO29lKNpGfXup
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8248
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npQeRcDcBwpoHGxzLwJrIL/Rzfo0Fa0GkrQPXLsXu0k=;
 b=Y0ez1H87ykcobyFUI5exP1VrWHovNzZos+zsN+yxXJl7dUwrUWt4o0Su9bViTEjrCQ3zutWEbrauDM0dbdoKZAV4mzv+R2wGxAXqv/9ORRNwaUatkrY+Xc7NLLJ4wWqwY31ad4KGxMkCVItVYf/g1r65P3NDdNbyPNKeltLFOVJs8MllIjX0EtSwIUb0bODF55uFK3KG4jcmX271wZAzxhuVdD4TQpw9e78RLt8BWlUf7mBoCUPgv6RMnAmIz+5ZqDwY1jUcMUcVaWn8BVuaA9PbizQC2LHyB+GfZK/H6F3LVTJesLV7n1W50PNyv4o24kVGSTjswMagJm9Tnccftw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Y0ez1H87
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
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 31/10/2023 16:40, Ahmed Zaki wrote:
> 
> 
> On 2023-10-31 06:00, Gal Pressman wrote:
>> On 29/10/2023 18:59, Ahmed Zaki wrote:
>>>
>>>
>>> On 2023-10-29 06:48, Gal Pressman wrote:
>>>> On 29/10/2023 14:42, Ahmed Zaki wrote:
>>>>>
>>>>>
>>>>> On 2023-10-29 06:25, Gal Pressman wrote:
>>>>>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>>>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>>>>>> I replied to that here:
>>>>>>>>>
>>>>>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>>>>>
>>>>>>>>> I am kind of confused now so please bear with me. ethtool either
>>>>>>>>> sends
>>>>>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>>>>>> interface
>>>>>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>>>>>> kind of
>>>>>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>>>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>>>>>
>>>>>>>> I have no strong preference. Sounds like Alex prefers to keep it
>>>>>>>> closer
>>>>>>>> to algo, which is "ethtool_rxfh".
>>>>>>>>
>>>>>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how
>>>>>>>>> would
>>>>>>>>> that work on the ethtool user interface?
>>>>>>>>
>>>>>>>> I don't know what you're asking of us. If you find the code to
>>>>>>>> confusing
>>>>>>>> maybe someone at Intel can help you :|
>>>>>>>
>>>>>>> The code is straightforward. I am confused by the requirements:
>>>>>>> don't
>>>>>>> add a new algorithm but use "ethtool_rxfh".
>>>>>>>
>>>>>>> I'll see if I can get more help, may be I am missing something.
>>>>>>>
>>>>>>
>>>>>> What was the decision here?
>>>>>> Is this going to be exposed through ethtool -N or -X?
>>>>>
>>>>> I am working on a new version that uses "ethtool_rxfh" to set the
>>>>> symmetric-xor. The user will set per-device via:
>>>>>
>>>>> ethtool -X eth0 hfunc toeplitz symmetric-xor
>>>>>
>>>>> then specify the per-flow type RSS fields as usual:
>>>>>
>>>>> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>>>>
>>>>> The downside is that all flow-types will have to be either
>>>>> symmetric or
>>>>> asymmetric.
>>>>
>>>> Why are we making the interface less flexible than it can be with -N?
>>>
>>> Alexander Duyck prefers to implement the "symmetric-xor" interface as an
>>> algorithm or extension (please refer to previous messages), but ethtool
>>> does not provide flowtype/RSS fields setting via "-X". The above was the
>>> best solution that we (at Intel) could think of.
>>
>> OK, it's a weird we're deliberately limiting our interface, given
>> there's already hardware that supports controlling symmetric hashing per
>> flow type.
>>
>> I saw you mentioned the way ice hardware implements symmetric-xor
>> somewhere, it definitely needs to be added somewhere in our
>> documentation to prevent confusion.
>> mlx5 hardware also does symmetric hashing with xor, but not exactly as
>> you described, we need the algorithm to be clear.
> 
> Sure. I will add more ice-specific doc in:
> Documentation/networking/device_drivers/ethernet/intel/ice.rst

I was thinking of somewhere more generic, where ethtool users (not
necessarily ice users) can refer to.

Perhaps Documentation/networking/ethtool-netlink.rst? Or ethtool man page?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
