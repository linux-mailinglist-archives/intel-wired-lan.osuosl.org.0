Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F6C7DCC72
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 13:01:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99601409F0;
	Tue, 31 Oct 2023 12:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99601409F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698753665;
	bh=9j4vdhVTUMa4dtA1v3ju2azKKK/qLdiCiY1iGYGQpwg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PMGfqgr/J/2m7VvSeljnsK1zc84nwYbskYttX/SVxyMEsR8kbsVU66pA998N9Wl+X
	 8JZGs8nKIwuVtqMofLHDApKZMo7vhusgFl1KDyAYhEqyJs+Ej0W2iuw+3yiabyYrIo
	 A9hA8g5ChA9Lo0hL0K+jHLVe97svBCFepT6hQgMdjjKSS7Q9+NT/hDI4iVFp8HMvOX
	 LPskTjimrW1/ssf1wrUp20ijADxefXCXljH6bAL4ZudiDHzM1aI5ubs2oxvgke2fHF
	 MzBMh4W5XUIZm8l38EEvAA7+x51NQAvXipA4gb14tuebifqh/9xOzdgqchBlpkIQvK
	 hA50Td8BUJYXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3faN-M9nwC7C; Tue, 31 Oct 2023 12:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38A6E40492;
	Tue, 31 Oct 2023 12:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38A6E40492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 628931BF322
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 12:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E60F6125F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 12:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E60F6125F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6iLrG_bHUb9K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 12:00:58 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2057.outbound.protection.outlook.com [40.107.93.57])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18FA7611C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 12:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18FA7611C1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+owThzU47hRBsQHXx0zDxg9dwX+wOEUevmBxg62zgMiz9I24GI5T5W0H5P5kMRyhjj53WWl5kFYy7gLeeyRxAnzvfkGe/c7GPZhEvlmJgORbm4Yh9bken4Z2rG/u2wDsQ/PccjRDAvszyfDxEqhxQZcsGwCl8t1VJd03xQKr6+6iQUd7SwmQ3/lMcPIR6Kpdz2E0CM+5RjKQWewLNz9UUsH6AoK0UcIGYOA0aJWia3u3VIFs+jkAZq65b6D53xhLls4mUsYTbS0UyCRedjMPrSZcdsB2bnJhXW2+SZMCLGSaVseZyGRL82zQs/CS1KjWE7HTliieu/hbhnii3/opw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yd7v/zcn46qzVFHslve9JMOb7fkCBIbu9RZoeSWvqu4=;
 b=H28Jp4b0ovqkZpjISGCWKrjo0XapBnsT/rcC/EZY7EvesxQPTobHaTOWbfyQ6QV59hilt8RQAEYBDoT+G62wtFH9tMZWKo+rn35a65FRhPs5oVNtDQPBRsNCWP4rnCRcS0SFVK58xglB1gX6KjR7lTBzhNCcA0lDNrcx9upMPpDibkB4mUIYZAHE3z9Xul2cw8t/1gtuvtkLCTUUyr1Sr/TrE9zUR9sDDKpjyxFReNdsFjMrKhD0bH4wbZFQH7/xrE5/PLSoFFJXcJwhseK3HPDWbKZq9KH7d48dU6t3Udtya5n2AcEhUyu9Q8Y0jhdvkF7ijCbKcHYwPqJqXxVvWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 CY5PR12MB6084.namprd12.prod.outlook.com (2603:10b6:930:28::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.28; Tue, 31 Oct 2023 12:00:56 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.028; Tue, 31 Oct 2023
 12:00:55 +0000
Message-ID: <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
Date: Tue, 31 Oct 2023 14:00:45 +0200
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexander H Duyck <alexander.duyck@gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
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
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
X-ClientProxiedBy: LO2P265CA0487.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13a::12) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|CY5PR12MB6084:EE_
X-MS-Office365-Filtering-Correlation-Id: d19b4428-f131-4f83-c292-08dbda09093a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G8AEPOfV319Kw777as8oByXHF8B11jyp9nVhCzAk8zubZw5FJOPqfK0Rm7fNTYAH9xE3B295kc4movOIlQOX374mYvBX1gGyZhafcKFix51leg3jp48gGrjzHSdCAr5BuodAse9/zvOi8X4LQuoD0I7CoWDZURtEaXTR1CD7JiwJZQ1p4Lc843v8UFsuNJItnWEj9+mHHgKvjPsKDsonrhgqHET7pGvXrfu8Dk6qwJKCURh5eOWYCBjl22zxyPRzbXWDr58zjQLMi3THYG5932NAqBiDitg+auXUM8FFrgyqfuop4/wcU1V63fAncinMuO2MsCZbQv9cChFPEwkq4ISawFQYwgI588Ftuj1+VIJmDuQrWszyZRZStcEIIGBQEMaEnFVGBPL3DndltW+VgkGHaxFahf19ys54cUluM96egTf3Yctde50u0fbKnrPWUljbthiFpGjnuCdnDgG2Y2EU7FceIZw/o0UyRXEs/HnAL9XjKjl5diqKqnx8xIj88H03pePnrH0V2J5gIL/cLpRet4RGg8/etUXnktIvaE9xGbixineb5vVdoUONhuaK9dwxLTSzposJ483GEn3sDWclTOdFc+vRGeqjJ/11Tf1DcyiCAQCojsAuk2bXtjxVfjtSZtATfZQjmisAA5Z0goP6XDWse/aO/IhQ2WfMQ/hVJNCd29viD9ovTwi2o02n
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(376002)(396003)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(6506007)(6666004)(53546011)(6512007)(966005)(6486002)(478600001)(83380400001)(26005)(4001150100001)(2616005)(2906002)(5660300002)(7416002)(66946007)(66556008)(41300700001)(54906003)(66476007)(110136005)(8936002)(8676002)(4326008)(316002)(86362001)(31696002)(36756003)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0RqQzhHd1U1c3pSNGRoS2J0OFpUNW9icHROcEJGNUd1TGtid0F6cmR6Wks3?=
 =?utf-8?B?UUVnNEYvWHExMnYwOFRYVTJxQVR1MjlZM2NHWWJlUHNSMHNDTS95ZUp3bklT?=
 =?utf-8?B?c0FhUFRmNjRySHZEeTNxYjlibWorWlJoNFllRTl3cVQ1bk1VRFBPVjg3cEwy?=
 =?utf-8?B?cDFieERZSy9wUWZHZDI2V28xc0NlQ1ZaWDgzM2lkY0V0VnRMaEdUbm1CSDgx?=
 =?utf-8?B?WHJQKzFDVnliZlR3Q0I5Zk04VmV0WDVsa1YycU54V2ovc3ZLOHJNY3AwWTR0?=
 =?utf-8?B?azcwQWhnOTZubVZJaXNDdXZzV1hkdWgwdFZNVng0Rko2SjVuUzhiWmNEMCtx?=
 =?utf-8?B?M2R1UFZSME00N1p2UHdITXZzS28wdUpndk9DSi8zSU45eGJMVzVUaEJLUGZW?=
 =?utf-8?B?Q3JFQks3ZkxKK0NWR0JHSkRteFJPblgzQStNNXI5NmQ5K2hmK1pPUzdHNmFo?=
 =?utf-8?B?ZkYvUVlmRVBSUzIyYUozMGltL1dFcUJRUTMzZ2pwL1kzNUJGS1NIV1o5b2hq?=
 =?utf-8?B?YWN4azU3eTZDcllRT3g4STIwK25FbTE0L0FYWHRERkkyR2lZNUNGNUMraGJr?=
 =?utf-8?B?cWlzeWRiTzBEelBhY3hmKzFWVnYyeG9LVkV5RmVSM2Mxa1BUcVFHcmcvaGIz?=
 =?utf-8?B?SjRZUmFYUGRoNXQwOWd3am0vV3Z0eldXU1dIWmtvWlFpWmxEbGNpUWtvang5?=
 =?utf-8?B?VGN0MWdsdWhrcE1HTmdXN21xemZQZGZ1bG94SHRXK2oyRDZtUm4vaEpIUE9N?=
 =?utf-8?B?c2xQemxKQ3ZVWEdEaExaNnZZcTUzOWliVzZtUVV3RVZ1MXc4N0pzVU9ONm5U?=
 =?utf-8?B?Q0ZldGd5YWdWL2JYS25jbm5ybTJXakF2cGl6dzF2UkU0cDlsTHl6VjdWUlhH?=
 =?utf-8?B?ckpZdEdoUU1WR3pnV0xuUm5qVW9DM1VKWkVuOGVRbFV6YVVJWlZzZDQyY3c0?=
 =?utf-8?B?cndhZ2c4QkNkcENQWEtkVHRGNHA0ajBUMTRmZU8rY0VnL014czBER0Y5clJZ?=
 =?utf-8?B?dGhjclMzaHB2UUlYN3B4NnVidVJoRHY2OEs3KzZBNGRoSmxvYno1SERPaXls?=
 =?utf-8?B?Nzl3NVlkUy81UG42bHdUR2FSRXpGcStObzFDdjVXdTZ5dTlTTzlCQkFyeVAy?=
 =?utf-8?B?UTNOblBkdlBPTzlVSkJwNFJtWlIrQWh6TkpUbFI5YkphZDlUVytvenJJRU5T?=
 =?utf-8?B?dWFObUl6bVMrNUJmaTNrRGo2Wmp3aGdmUkw3SEFLUFJCTjdrKzlPa3RVNG45?=
 =?utf-8?B?bFF5NXhkWTNlRTRiV25INHJXZ2FrcFBmTjdReGNyYisyeVhEVlpKazhIVUNo?=
 =?utf-8?B?ZktQeVRVa0xjbkduRitLQlVlVTF5WUdEL2hQeGJLZElRQ0pPOEM1RXFHN2hM?=
 =?utf-8?B?TzRqL2Y1NTdoM0xFTVNQM2FQNVE3cER0K2xJVWpoQ2xHbnFOWFVPREc3RkFu?=
 =?utf-8?B?clpWVDRWSFQzWHlJdy9vSllabWhTelEvdXYwSGRMQVFVMzl3K3NSbnVPZnpv?=
 =?utf-8?B?WlJhMnRLaWY2b3NsVThPTjhoRU8zRmxlTmFTUGdWeXVxVGRNa3piRmcwSGRz?=
 =?utf-8?B?c2hrVTVmMVpPSnBYV3Q1aElkTTkxNmhMb0FISnVkcDlrS3lTeTQzVDdJU053?=
 =?utf-8?B?MDVwT3Zka1RmUmltUDdLWkRjQi9WUlZYUjNObEZYdmYyakxFN3NzQi9XUnEw?=
 =?utf-8?B?SW95MWVDTEwzanV2UnBWR2VGUDlQZ1RqeEFEZi91end2UVJhYWhvUFEyZmls?=
 =?utf-8?B?cnMwMy9UT2FacVc1MXRQN3o5MlJLcFA5MG1MVUFlU1pBbDcwek1DLytSZFRH?=
 =?utf-8?B?WUd4S0ZoVjZmeW95Y2I4QjNhQlJrbnVaaDhVSHh0WGliVEVlS3FBanRHZDZ0?=
 =?utf-8?B?clMyYm9RTWpxaVZhN1c3RC8rQlc2Y0dsSGJmU2pVWXJrbWRaNGYybWRFaUpB?=
 =?utf-8?B?SWd6dFF2RUJ5cHQ3Yk5MOXczbUJ0bWxTd2ZPbFVHSXZEQWx0dEJiWWpwYmJj?=
 =?utf-8?B?Y014bEFCT1RXZGVhaldleVlVcERuNzk2ajdrVWRCcU5lczBBRk80T1RrSGNy?=
 =?utf-8?B?MzZqbHNVWHFKNzFmQ0tDSDcvWUUxRUtVN0VMWFRQMlB5ck56TGJRa0c4aFhn?=
 =?utf-8?Q?YnS+PfyNZJ8e5ggPV4UxJUb/w?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d19b4428-f131-4f83-c292-08dbda09093a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2023 12:00:54.9641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KnKT0KZf2+B+UUfSxHkghCCXg8xIGEp+vuVdXnhmAc2SPPkmO/UqvCBIhWPHIWDg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6084
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yd7v/zcn46qzVFHslve9JMOb7fkCBIbu9RZoeSWvqu4=;
 b=lyVWk4tbEACmkAX2esU41It3ogeZWmF953HeyeRwRvpTrz5ZSsfwg/mhRWNhqWeYiFAPmnWYBUHoNlgdo3D97IKlOHr+ur+PKI8QX+FLjLqDtKf8gXrXheIw9+91+XOt5NB63nOuKb5ehFOHCqQnMALvNjh/6WNPe+kPMOZj7Ysg2Qz8yd2epnVRTZTvUSTEw+H+cIEHCrC5ywT9X386oQXXrU+AkbAB2viiDA5z+7e3ecKHbBRvdMR0ReZ83/JjQjaKh871mMstlVDS9D0IuE8x4m9hzWbdO22IRlMD6TsIh6e2J7T+EbOSNHDdspPrbiA94POPUl4yq+1bYobO9A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=lyVWk4tb
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

On 29/10/2023 18:59, Ahmed Zaki wrote:
> 
> 
> On 2023-10-29 06:48, Gal Pressman wrote:
>> On 29/10/2023 14:42, Ahmed Zaki wrote:
>>>
>>>
>>> On 2023-10-29 06:25, Gal Pressman wrote:
>>>> On 21/10/2023 3:00, Ahmed Zaki wrote:
>>>>>
>>>>>
>>>>> On 2023-10-20 17:49, Jakub Kicinski wrote:
>>>>>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>>>>>> I replied to that here:
>>>>>>>
>>>>>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>>>>>
>>>>>>> I am kind of confused now so please bear with me. ethtool either
>>>>>>> sends
>>>>>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the
>>>>>>> interface
>>>>>>> for "ethtool -X" which is used to set the RSS algorithm. But we
>>>>>>> kind of
>>>>>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>>>>>> "ethtool_rxnfc" (as implemented in this series).
>>>>>>
>>>>>> I have no strong preference. Sounds like Alex prefers to keep it
>>>>>> closer
>>>>>> to algo, which is "ethtool_rxfh".
>>>>>>
>>>>>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>>>>>>> that work on the ethtool user interface?
>>>>>>
>>>>>> I don't know what you're asking of us. If you find the code to
>>>>>> confusing
>>>>>> maybe someone at Intel can help you :|
>>>>>
>>>>> The code is straightforward. I am confused by the requirements: don't
>>>>> add a new algorithm but use "ethtool_rxfh".
>>>>>
>>>>> I'll see if I can get more help, may be I am missing something.
>>>>>
>>>>
>>>> What was the decision here?
>>>> Is this going to be exposed through ethtool -N or -X?
>>>
>>> I am working on a new version that uses "ethtool_rxfh" to set the
>>> symmetric-xor. The user will set per-device via:
>>>
>>> ethtool -X eth0 hfunc toeplitz symmetric-xor
>>>
>>> then specify the per-flow type RSS fields as usual:
>>>
>>> ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n
>>>
>>> The downside is that all flow-types will have to be either symmetric or
>>> asymmetric.
>>
>> Why are we making the interface less flexible than it can be with -N?
> 
> Alexander Duyck prefers to implement the "symmetric-xor" interface as an
> algorithm or extension (please refer to previous messages), but ethtool
> does not provide flowtype/RSS fields setting via "-X". The above was the
> best solution that we (at Intel) could think of.

OK, it's a weird we're deliberately limiting our interface, given
there's already hardware that supports controlling symmetric hashing per
flow type.

I saw you mentioned the way ice hardware implements symmetric-xor
somewhere, it definitely needs to be added somewhere in our
documentation to prevent confusion.
mlx5 hardware also does symmetric hashing with xor, but not exactly as
you described, we need the algorithm to be clear.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
