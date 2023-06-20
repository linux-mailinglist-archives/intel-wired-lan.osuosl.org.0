Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D084573699C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48A5A418D2;
	Tue, 20 Jun 2023 10:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48A5A418D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687257752;
	bh=JfIlW+Wmcc9k4mOqI/MCU86vxbcLk231B2v8ivA0LCg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5xxB+n63kUJ6/n7955cl4rT+Ol7B7x8/c+Wlx7q6rWmjUBxZjBARPoozNKc5Eahon
	 0/+AKFCtEKXCpay3yG/UaFksEi0VMDJlCSd0HgOUGRc4LgRQ8WAHfQbG8ineteosMg
	 YxiiZ7Ena36b95d55eYnjPadTPqpT13KLTvTYh/ISIyNoQyep3YpmsMJrCqvUHHcbU
	 ziBzMY1OJ2IBfxZ4RADCv0+0zNAwzcYXIPd6rpYBzRrWAtreP4oSopdWzLhYWvlUBd
	 r9ltvWaltFCgwqdJCBv0c8Zxu9X1JHlQSaX8sIsM75PNARkeNpTF82sZbzDSzdhpyM
	 N7W+uJx8/pCHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6DhVzGco4X6H; Tue, 20 Jun 2023 10:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3197418D0;
	Tue, 20 Jun 2023 10:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3197418D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA0F11BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE5444168E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:42:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE5444168E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBAPmyO2-mUs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:42:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 951FF415BC
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2061.outbound.protection.outlook.com [40.107.237.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 951FF415BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:42:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XcwHIjYxnvkRHrdsYtnzF4/xX04emrVDICjEtV2W85QQTZt5e0M1UseusbPq8qu7S4MKSpte0ygV5QwfVll7Jq/NbVlKwx0LYNyCghT0gSp3xrPTLhcIJcQO/droOuxrU2UoH/E+M1RNvOeYvWcYPcRINwoKMFn63D1Lkamrd1GEDe8jpSUlnrRhEfNjGXqXAfzVLfPPV5EHjhq2iYwcPJXozBDEv+3XcWKeZoVZz/EBz0SGeawwb8s8yE2pLeihkDzwjq0uuiC/WHpLvNNU6ARkq1AhFYhQN7S74KsYKrOUzq8awyi1CR69tmkmIVFYUTkPRxDGampleTObVsMYRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oiWbzi/R/7TCqueVQKFPnGASDItfpLAxDZcEZdmroD4=;
 b=dyuiKwtbO8agE/pkaeTqEuJznA/w089FajG4iVqmyPlL1dZnlkykEZUxDEABR4tjVO58A4nv4wsNLt5Ly6ecdGIisL9Axpf52hdDhNy6vltrHj4DOzVsrbF0AdiVYMN0B4jm5HebTRAfuPh/UxKsp3rMdnmWr+DUH/Urc1EIBVyYOfnnjHKqLRbchprVnhZrkFbAVnUA9RTAT+eFE1phsMEVi7cLXYG0KmxPpyjnU8BunQUSHMfsTDq0yjQVF6tYQi3tIXyrUBJG6cBYRm0lJ3+C8SDhUwyqK3GMAV/seU0roheCH78493puxwVFgNN3Z+QVw9C1sYElA1h5SpqO0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 BN9PR12MB5306.namprd12.prod.outlook.com (2603:10b6:408:103::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 10:42:22 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::12e5:730c:ea20:b402%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 10:42:22 +0000
Message-ID: <17cc8e10-3b54-7bb7-6245-eba11d049034@nvidia.com>
Date: Tue, 20 Jun 2023 13:42:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Piotr Gardocki <piotrx.gardocki@intel.com>, netdev@vger.kernel.org
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-2-piotrx.gardocki@intel.com>
 <c29c346a-9465-c3cc-1045-272c4eb26c65@nvidia.com>
 <18b2b4a1-60b8-164f-ea31-5744950e138d@intel.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <18b2b4a1-60b8-164f-ea31-5744950e138d@intel.com>
X-ClientProxiedBy: FR2P281CA0056.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::7) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|BN9PR12MB5306:EE_
X-MS-Office365-Filtering-Correlation-Id: bd5dc5d2-6a3a-4e06-80e8-08db717b0765
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YFa+AFZd5bZJZuO866OsiUH0WWa/DDrRcK19noGZHFCbxTjn8gN05voNNa88/lAuGUnO6o1e8H1o9LsdZzGQfdlWCesNSnLmfg7JKiKu2v1/A4hPRxJ/NEU/D7Bz3xvsI/tZKTQiORD4QjulaNBnR3kM3Ogmi3AZMkuc7YZeolvqWhsZcQAhGP67AKypvGOEsmbXLuoUhiT9YuuGSAMvIiLiiky4haiYkON6A6WoYg36jFd1Jtc/Lz4IXAgnBmdNxagDU8tpQOEWcgp76SLrTIcPrU22VM7/YrWpUrmUU2QUvTaGyrqJi3NFpfzskss+JpZsQ5qvXTdmoZhZL21Qh81K1TQnbohh9gJcuDzztMt3vZYNM1ZaOdk+Mu7dPNNnuoyBM28ld3p59HE77DuRqtqVeGZU2Ukyrw8958cttwt9QA2U8QWrhxbSWk+sFuzMHfmyX19q4LCi/1TGf0y9/wf+2kPEiYkgXofpTjU0gqqzD8OvTEYLWDdTZQUIOLWIMTtEVczLFK3QcaYqKEQcIW5cN7YJ394rS/Sy8WJw7nLjo1+gsE+RHf3ltIH6SHg2jDdZsGa3f0u1IfQNVSfmFg9XPBak9Tfm7Xz7Qj2ZnmrGpEHvagSY1QPFb2Cj3NKFm+f9UYUi4QIBnhRHBHPjMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199021)(31696002)(7416002)(31686004)(83380400001)(86362001)(38100700002)(41300700001)(8936002)(8676002)(5660300002)(66556008)(66476007)(66946007)(316002)(2616005)(53546011)(26005)(6506007)(6512007)(6666004)(186003)(6486002)(478600001)(4326008)(2906002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmppdTNvTnIzc0tCVDcxTlN6S1k3QmRESDM0NktRdEFyRVdzb3Z0c0lKWnNi?=
 =?utf-8?B?M3R6UHRDU25KUC9COUwvYzh3MEJyUVdlZWRWaUxFSFgzYmFVSFJnSFVCajUv?=
 =?utf-8?B?dlFDMHowQWlXamRnVXpsdHM2ZDl5dW0wMlpWOFVVbDFWVklobUtaTmhSRmph?=
 =?utf-8?B?U0dISmE0SThHWjRWeHNUbHNrbU8vRkdIT3lxY09lMk1qT1pWV2hqRlhZejU3?=
 =?utf-8?B?cFFDMkZrMXFGVmhONmFrVzE2b09vMGhEczdYZnc5V2M3Tm9zcklqRnA5QU5k?=
 =?utf-8?B?UWY5Y29MeVMzbkZSaExITXBFNkxldWZCbzJoUmtmN1d6dnNtWnZHc0JVS2gr?=
 =?utf-8?B?TEc4eUJoTXF3UVBNWDBFRTkxRmhYVXJRMXBFaUpTMnJCWmtwTlRXK3E4czVE?=
 =?utf-8?B?ZnhWZVpSVjgxTWhKSGxVT0l5U3kwdU9LUTB2S1F4Nms5UXdUUHZ2ZGxpdkRa?=
 =?utf-8?B?aG1qa3Y1bENjUGpRVkh4ajNFNmI2YVJadzNTZ1lVLzQwcE1mTjhGYWxnVGtn?=
 =?utf-8?B?UmdPVjRMRGZqanBZL2ZCRDZQNXpDK3JhNEZ0dlpBWjNkQ2NqU3JicFBIcnVy?=
 =?utf-8?B?ZjZ4RW1ERXd4bTZ0UEJ0RVFZLy9xd1hjU1JERkNGR1NIYjJGQVpZdVBXc3di?=
 =?utf-8?B?SUhudFh5R1RXRDNMaDJTZ3djU1krVlkzZFBPNHFRQTBJWmZNSmMxR3hKTmlr?=
 =?utf-8?B?R1lTdXR6NDJETFBEM1EvSGQ3aUhNNEZGOFEvUCszMmxrdmFHQzhPVXlxTmRO?=
 =?utf-8?B?N045aHZYM0NrVUIvcGlDd2dKQzZqM2Y2b1NKekRMcjhIRXk4Y05ZcFd6aDI5?=
 =?utf-8?B?TFJrRUFhckRLMUx5VXhEblJ0N29ZU2ZsWDRwK3BLWUhQd2hvV0wxSUJKQkI0?=
 =?utf-8?B?M0dmcVNxNjgvaUc1cEkxM3duN0p6US9BYU9NOTBiYkFHV05CWTJZdVVQTmZo?=
 =?utf-8?B?blRqUGhDZ2NpTDVjekxnTjZxTjREV2h1ZHZ0N1I1YWFLWnRUQUxkYjRJMHI2?=
 =?utf-8?B?dG1nVVJwWk50c29WZEUva3Vyek1TYmFzSTBONzNhdm9VU2tvU2V0cDJhMDlZ?=
 =?utf-8?B?MlZ2VGswMkpQekg1WjVHZVpFTnlOWURheS8zd0V2WmQ4dGd6cXpBRVZ1eE8z?=
 =?utf-8?B?dTF1M2h6MEhEb0pqS05IQlIxaGpTMHRTTU5FSmR2SmprOE12eHU4Uy9WU2sr?=
 =?utf-8?B?dk00a3cwMHFSbG5pZzg3ZFVhc2JkNTFOMENSdU1RYXpNY2FRd1NtMTdyUkpu?=
 =?utf-8?B?c1E0OHNPN0U3MTNhR0MxNWFWQkRaQ1A4QVFxNm1mSEdNbE0ybkd6K1pka21o?=
 =?utf-8?B?STNCWkhSNkFuQi96OGhITlZ2cU9WckRNT2ZqUXUvQUtpRVRGSzd0SjROOFM5?=
 =?utf-8?B?SGVOSklUNXhtSG1yKzZ0YXRseE9EZHVkZ0xLaGZZNG5VZFFSYmRnOFYrZjIz?=
 =?utf-8?B?ek53OGMrT3RHQzZJd1BQRTgyKzBlbEdDNDk2LzNwc28vUXJrNHlFckdrM1ZE?=
 =?utf-8?B?OFRBQXBoeGd1dnhJZWFwTlMwQVkyRGtwZzVsMHA1TVNPdzRiN1FHN091Uno1?=
 =?utf-8?B?c0d1WTEwUlVYUWNDTWN1ZkJvU2N5UVJnT0lPcjFFN3ZZRVg3S1VDUnE4dFZH?=
 =?utf-8?B?enk4dEEzSzZPVGUwOGxDcHhGK3RDRkdwT1hXMTNaVUluY3Fwc1grYWtCc09Z?=
 =?utf-8?B?eS9ZV3J4U29tQy91cExEN1NhTURiRTRTamFjcmRVMXJTNDlsZ0ZCa2JsYjQx?=
 =?utf-8?B?cXFTbHg5Nk9yMzgvYXdZbTFtWWVoVTdia21VdU12QmhleURxR29vTldTQWZx?=
 =?utf-8?B?QUxLcnRrcFpuTXNGTUxjN0RxN2JxQlh2dTI2bGFBK3RFUlYyLzNZekEyS29V?=
 =?utf-8?B?ZnB3UHA4d2Y4NG13MEVvOVIrWCszbzdrRnUxL21PR0lwKzZxSG9KZktEWW1a?=
 =?utf-8?B?aERnUFZubFVIa0kxU0RSczBmZ1lzaVA3L1kzbXdhOTJHdUJDbGZlN2trK0Zm?=
 =?utf-8?B?amJvWTRlVzVVTGJsVVVPUjl1WHlFdEdnY3o2T0d5WTdtUXFmWFdzZkZ0N09N?=
 =?utf-8?B?elFHQWx1eFVyVlh2WDRxWjh6Wk9adHVVQ3plb0VKSGJ0bkpVNkdCOUhqandX?=
 =?utf-8?Q?itmdjstaZ601KLJWxKpPUxzV1?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd5dc5d2-6a3a-4e06-80e8-08db717b0765
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 10:42:22.4648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3ac5VHmzzh38xlMOeniTqhk5NYts6+hbRKIfYvUoBxDmmqdx0pxTUbxoGDvAIzB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR12MB5306
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oiWbzi/R/7TCqueVQKFPnGASDItfpLAxDZcEZdmroD4=;
 b=YygJwOpSmGUcI6voIAqM42D4jED6cmGYeOIxu75ZMLmJ51X0GvsHledGRBM5FIeV51JeBpVac7oUWnOsIxIv5RDs/9K8QQGnOcjyV0BOQ9A6nR+bUZH1UWw3GmcgP9NnKVebbbRSTDtWMpKp/YL4zpv9hFUPvqIQ5xwG3oPIO8aVEK93aHKw5B9dK0E/2unKmQgGV168w0BBkcRXaGvdkoyYQ+RLtKHbjWKeffuDiHTOqLkPwKhdYp0Ho1Mi4XTdkp8AvJl2x1bT04FEov40oezSBaGsyyzEcFZEMfArnJpCl55djsnQ4hXMBRm/98/HoZGk/pIqYdhtvvfOcC5aSQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=YygJwOpS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] net: add check for
 current MAC address in dev_set_mac_address
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/06/2023 13:29, Piotr Gardocki wrote:
> On 20.06.2023 09:16, Gal Pressman wrote:
>> On 13/06/2023 15:24, Piotr Gardocki wrote:
>>> In some cases it is possible for kernel to come with request
>>> to change primary MAC address to the address that is already
>>> set on the given interface.
>>>
>>> This patch adds proper check to return fast from the function
>>> in these cases.
>>>
>>> An example of such case is adding an interface to bonding
>>> channel in balance-alb mode:
>>> modprobe bonding mode=balance-alb miimon=100 max_bonds=1
>>> ip link set bond0 up
>>> ifenslave bond0 <eth>
>>>
>>> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
>>
>> Hello Piotr,
>>
>> I believe this patch has an (unintended?) side effect.
>> The early return in dev_set_mac_address() makes it so
>> 'dev->addr_assign_type' doesn't get assigned with NET_ADDR_SET, I don't
>> think this is the correct behavior.
> 
> Hi Gal,
> 
> I checked it, you're right. When the addr_assign_type is PERM or RANDOM
> and user or some driver sets the same MAC address the type doesn't change
> to NET_ADDR_SET. In my testing I didn't notice issues with that, but I'm
> sure there are cases I didn't cover. Did you discover any useful cases
> that broke after this patch or did you just notice it in code?

This behavior change was caught in our regression tests.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
