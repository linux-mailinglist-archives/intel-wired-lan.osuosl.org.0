Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9F06EB7F0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Apr 2023 09:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 525E68403B;
	Sat, 22 Apr 2023 07:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 525E68403B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682150147;
	bh=junlIC+jfnukAt+2yMD9vXiLx7L3f9e4n2iFl7zv+48=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OOqJILlM89i3qIV7s9Og+dExorlNZjjtHmNjiW5Ryh+LsDXP9MDYhvCKDZ5YLlQRj
	 w+D9Tl5DeJJDvTC3cAfTyfaBFstNXaAKN0Tak+4gAAJuyb460VZFGN+2nJcOFYOGAe
	 lfAuayXCyEL34cscHydHjWpXaVqgQO8+Fp2S/ey1w4aiHS3vvQWW7xhEZO7b02dSXD
	 o6CauTn2lhk5iHJC+rBrFvZnOVb8jVnuPMgHFX4vzDqXuKFykLRkS/fkZz/2jwGgcG
	 EPyPaLR4uL/Q+hfMK4HGR1SD74/91eKk+q6ym5+o3BdJgq4GvYZjrX15k9OcJlDjxA
	 S3ka5c/drmU5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8oeNyMD1aKyr; Sat, 22 Apr 2023 07:55:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDC8F84039;
	Sat, 22 Apr 2023 07:55:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDC8F84039
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDCAF1C29AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 07:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8F6342019
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 07:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8F6342019
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EWRoP6DaEsV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Apr 2023 07:55:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 770DB42008
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2113.outbound.protection.outlook.com [40.107.96.113])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 770DB42008
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 07:55:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4/xpvMMgCCa+wro4ANAQKnX5k7pkO4fDG5BHAtK/WkOpzLUodwEx21mp0PyEJvWSEODVEp/kd+TmOm60A3PnTqRQkejobpr6pXK9WMzv/IGQcGidMNfEGXzKi4oJXR02nht/7vpRhi/zbA4LYWU07xBPb+r8BShqcSPhC2RwD+cVWLRJ8/IR0GNKgB/utlTWXBAWjohUb/LjZeTIwu00ypZuHhpfoX7Qft31trSrzuLu8fYzShDpXsJnJ9ZQv39WO4+69v4MxtIIYOpJOBzygp5IeDW4HlFzO0lGvQL+DOr0yoJ8el3yRtOSUPXJVgRT0Ab616MKx/zRwDcuYDb4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNSQbPZZKfvQhfSed62P73SL0A+Lobao8wIb+g0eCJk=;
 b=Ufzm7BZuA3sQJ7k0FsBI7zRmOy/lbosIqE9eGWu9HQKFGHYOKku13d13al7YIJfzH52nxFE5At0CkEnMhhLo84jfGeIENcDV/vE3+Y7UdqGojV+PpV7352tIhfbMdVO6RUi/NzrtWckURmGlr3/sM/5vL/zJnXfspQTCjQRZuWD6AYEq2XIe1oZWyw3QLHpB2talyZTGsD4A+nkn2IIqEM3sEbutfH0PJJ8q2FwbF8Uq+dA4TBl2jjbZaQqo+cz6bzc7K/27nQzMKZL2UcF98ciX77LtVMostKbA101gMvM75yg7q8SVtq+3vG7ptorUrlqhYXcTaTwi3FUO0IlN7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BL3PR13MB5228.namprd13.prod.outlook.com (2603:10b6:208:347::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.28; Sat, 22 Apr
 2023 07:55:36 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%4]) with mapi id 15.20.6319.022; Sat, 22 Apr 2023
 07:55:35 +0000
Date: Sat, 22 Apr 2023 09:55:28 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Message-ID: <ZEOS8L9o+pDK02C/@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-15-pavan.kumar.linga@intel.com>
 <ZDUunmuPmM0E3Rx3@corigine.com>
 <bc8457a8-28d7-3c79-9272-314f8be5cc09@intel.com>
 <2fdd6fe9-9672-8bf7-f8f9-e9906fa25167@intel.com>
Content-Disposition: inline
In-Reply-To: <2fdd6fe9-9672-8bf7-f8f9-e9906fa25167@intel.com>
X-ClientProxiedBy: AS4PR10CA0005.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::13) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BL3PR13MB5228:EE_
X-MS-Office365-Filtering-Correlation-Id: 52c1aac9-dd76-4788-d9b3-08db4306f3df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xGfFPTaiTV66k/7W95V0cm3IbrhLi4++BggCah/gptcgql8w7pHeqnWPMONK4Y8scZa8d4Im2Cj0U1kGLIMusrntTgSpTytseVnOX87tvuE8DHJSHFEcE0uPHhcPy+Hl5/wVVKj2O+jKZ8/kj/GJ7uUDLH32U+Da/YVIo2ncuHOzHFSbHlmyZxxfMYs3xF1LBPQnVEcG/8SxcrFJPbR0SilBKFo9O/P/9rR/H0KZgaSXM/gYCyH3F3mkOAn+mhiUgD7DUCWjzb4Gzc6AeK9Hi+cBnPm9O8rnk19Q7dLozHrlaTdD84DgBZFPs+ZyQiwFo4rpQR/eY0fqcE+Twa5lUqJxR8lVi3CORAkzz33+73TcU97kNkUmE/7HhEeRe2Q8GqOQc5Y4Pjqjgma5poGCfbuow2LOfHVasBbbsZcydj65KFwsHexljm+iAyxxmYjOItiMpgz3HZYo/yEwj5Eu/GQgcvwIfixzx8zGtTVYCZAiv7Ip0+a96bhkLoTveTWC4HAT++MFFxZFj0q40xjYT4+i2Z/WSXJR9vJxXIJ1QkfgsLL3YYx/EXamoIntpJvX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(136003)(346002)(396003)(366004)(39840400004)(451199021)(66476007)(66556008)(66946007)(44832011)(316002)(6916009)(41300700001)(8936002)(4326008)(8676002)(5660300002)(2906002)(7416002)(6666004)(6486002)(53546011)(6506007)(6512007)(186003)(2616005)(478600001)(54906003)(36756003)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE52NVdwc2RvTmdpbTYxMTNLT3BVMU1ZMzlVaVFwaXJzZ3NmYTJxQ05XTFFJ?=
 =?utf-8?B?ZDNvcUFLbmszYjlzNHd6SERyOHRiNG9QRG5PSm1xOHRyelY5aEQwOVFBK0I2?=
 =?utf-8?B?VmNmY1QxVWJtS0NJVFI4RDEwNnVSSzFVdlJsZ3pYaXZQZnFueThuZEdPdnlM?=
 =?utf-8?B?UGlOckVMYlN5RVlYSU56N1Evd3ZTby9TbTZ1VWEwTjJJeWZOYXBZWWhtelRw?=
 =?utf-8?B?TndXSWNYY3hmaTdNTlhCd2JqM0NJTmZLQVF6Y3F1bWNaUnFmeDhnTE9VZWJP?=
 =?utf-8?B?RFUwYkpFYkZ1WjZzbm42Q084RG1hMFV0a0dzVTBwUDJWeWZueUZLWWExc1Fz?=
 =?utf-8?B?TXJhU2pGYndJM200V1ArWmx6R2Q2aFV4T3hlM2M1eXF4aG53a2dEdFMraitL?=
 =?utf-8?B?Z0NGSzV4Mm85NGFyNEFTUUNuakI0d3dWdnpQaFA1d04wNU9jVUNqYUt4WlNF?=
 =?utf-8?B?QzhHU1ZlWDJhc2V4UzVoeTE1bUdSWGVtaEJrNDlIUDFKTTJwTFB4d1RDTFdu?=
 =?utf-8?B?KzBtam1qcW1Od2cycS9aZ0QrUVczWlowRnppWVhiM0llbEZOd1FIa2oyUG9C?=
 =?utf-8?B?a3V3eC9qN2ZhcW8vYU45VlQ3aER4ZkxjellLcmhMVFRYQWtkVzdRV3YrY3dU?=
 =?utf-8?B?SVBWa3QyRVIzVFM3TFNxV1pVQUptTTZ1Ui9HZkNHcngvWW9rQkQ0Z2ZTd3BR?=
 =?utf-8?B?aWVPWXFpeWk0TGhQS01Wd3ZuaVRHSmZua0tjQ1A2S1VvSWJxcmRoZTBMUlpp?=
 =?utf-8?B?Q252K3JjWFJBdjVJdDRpR296S0F4Z1BzMkliTitwOG52Z3Flb2RKQzNKT1k1?=
 =?utf-8?B?d25LZm93blR1OG5tVW1GYjYxaGd3Rm94S2NWR215dlFuU3NPSXhMbUxaTTZU?=
 =?utf-8?B?Zkd3SHB4SXNuSUxrQk1hOWNFdStvOXdJaUpuc3U1WERyWHJLdnBRZjZWV1dU?=
 =?utf-8?B?dXhTQjcwSUdVTVBtN3kxMkQwakJSV3JTNVVqYnZCQ0d2a3ZhdTNRZ2NoaU5i?=
 =?utf-8?B?bGdWVzR5dXY1b2hjd0JvR3VNT09vNE8ySTMyNkkvNjJ5MUtWM1p3OFVlRlRU?=
 =?utf-8?B?QUdVMi9VZTBrMEhzYWZSaVNEMWZnU3RHWVFCdkxCWWF0V0hjNDFwTlFsQlky?=
 =?utf-8?B?L3phUVlqbnpXREZWUkY0NEpJdW1ISDc5ZDJIK1VTZ29pMlFKSjFqR0lZd2Jp?=
 =?utf-8?B?bXdyd2w0UkxxZ2JzelNIZkhzWWF0TnlQTkZBb1ZwWG11QUJQS1Zpa2dIaXMy?=
 =?utf-8?B?Nys0TDZRSWQzdzVtU0NRZG55akdrRGpMK0hCSzNuOHdmL2dGaG9zTXJHa2Uy?=
 =?utf-8?B?cVREZ05JOEtZdHBvWDVGOVp5eUJuODBNVk9wcFhBR0Q0R3o5RGo0WFZvV2lm?=
 =?utf-8?B?ZzBPYnNEeGo0cDhxa2VaRFpkR3lLK1NoWERkRzBzQ0hXa1BCNitXNlVmbEpn?=
 =?utf-8?B?eStqVTZjenNyQmxOaE4wc0dGZThnZFpxVXJseHBEZ2RjRWU4SXBTbUtxN2RE?=
 =?utf-8?B?MkRBQ0xIRzZDaVNqakdUZ1NKWk5yRWdJZGgyWTRxM0tvLzN2SnVBUzAvZmNC?=
 =?utf-8?B?djBEaWtRQWtsTU4yZjJrdldxd2xiVDNHZXRxOXB0TFVNNXVMRmlIc0hmU0h3?=
 =?utf-8?B?RXNkUFo4WVEzMFU1SjJhZ2dYdW5PYlFVNGh0L1ZUY2ZpUUFJR2ZNMUNKMWNu?=
 =?utf-8?B?M3VwTVB4aU5rajdNMURSQk4wdzlmdEtNcUZMNEd2VlBraE1WblFOL3V4bHAw?=
 =?utf-8?B?akowbmpVdkFqTTVpVlZXRG5Zd3Z4Mmh6QU1jWkthb2tpN1B6azVMQUE3ZE9t?=
 =?utf-8?B?QlVrYUNweFFwNytIWEkxMjJlU1ZxWjhER05OYUlCcUZQMDk1bGtPNnUwZzRK?=
 =?utf-8?B?ZTdRcDBjRCsyNUdjNzRhOUFXMXhBTm9aaGZLSEF1QVBpUFRENCsza1Jkd1lX?=
 =?utf-8?B?K0puWmprK2VMWHR1OEoxVFg3enRqVzdHMWR5SnVpN0hUM1YxbFdSdUpNeWNT?=
 =?utf-8?B?UCs5YmJOd2ZYUko5bjl6d1dhN3JOSHNnR2ZWTWZjWkVSK294bEw5ZUdjZWZa?=
 =?utf-8?B?Z29lU3RjY1p5OXFMZXQvSlE3RGJtSytCZlRHNDVrb2NnVmI2dDhjTHd2TXVT?=
 =?utf-8?B?SldUNGJ5SDlySWdFS091NHdrTUdFWWRlWXpJSkFaODU5QUk4bWIwNzRVUFd0?=
 =?utf-8?B?enYvL2dpUDdBYWVCK3pFam1mQi8wSDd5MjRBdWMzbzdPeEJ2akhxTDdDaXhh?=
 =?utf-8?B?c0dpTTQ0R3IzVlFUVFZnYU50b213PT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c1aac9-dd76-4788-d9b3-08db4306f3df
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2023 07:55:34.5889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ca9Feq7YUdtrg8XnVlWY7Uew4K93FigyYhob9q6oBtmlUUy0d8V40UcmoS8ylR9EfQjIg5KLz0+4MlFzBi36YIrpkwR34Kk5loNA1JKWZkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR13MB5228
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNSQbPZZKfvQhfSed62P73SL0A+Lobao8wIb+g0eCJk=;
 b=HcaNn6rtDh0Tg2mbIlRYdZfSngsM8e09tsQM4vyWDK2OTFCzv0yDkKNpJ1XPGUBghslqBvmlEZVBsLKnyZB1xer7AczoPADICTnIEV5sP6e1jTZFZ3KlXnm4K25EngBQP3GoB0dOBT4Y1oScfhDzUY20OAE3xmYstd7i0pTjDuo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=HcaNn6rt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 14/15] idpf: add ethtool
 callbacks
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
Cc: willemb@google.com, decot@google.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 Phani Burra <phani.r.burra@intel.com>, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBBcHIgMjEsIDIwMjMgYXQgMTA6MjY6MjVQTSAtMDcwMCwgVGFudGlsb3YsIEVtaWwg
UyB3cm90ZToKPiAKPiAKPiBPbiA0LzEzLzIwMjMgMTI6MTEgUE0sIFRhbnRpbG92LCBFbWlsIFMg
d3JvdGU6Cj4gPiAKPiA+IAo+ID4gT24gNC8xMS8yMDIzIDI6NTUgQU0sIFNpbW9uIEhvcm1hbiB3
cm90ZToKPiA+ID4gT24gTW9uLCBBcHIgMTAsIDIwMjMgYXQgMDY6MTM6NTNQTSAtMDcwMCwgUGF2
YW4gS3VtYXIgTGluZ2Egd3JvdGU6Cj4gPiA+ID4gRnJvbTogQWxhbiBCcmFkeSA8YWxhbi5icmFk
eUBpbnRlbC5jb20+Cj4gPiA+IAo+ID4gPiAuLi4KPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0b29sLmMKPiA+ID4gPiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0b29sLmMKPiA+ID4gCj4g
PiA+IC4uLgo+ID4gPiAKPiA+ID4gPiArLyoqCj4gPiA+ID4gKyAqIGlkcGZfYWRkX3FzdGF0X3N0
cmluZ3MgLSBDb3B5IHF1ZXVlIHN0YXQgc3RyaW5ncyBpbnRvIGV0aHRvb2wgYnVmZmVyCj4gPiA+
ID4gKyAqIEBwOiBldGh0b29sIHN1cHBsaWVkIGJ1ZmZlcgo+ID4gPiA+ICsgKiBAc3RhdHM6IHN0
YXQgZGVmaW5pdGlvbnMgYXJyYXkKPiA+ID4gPiArICogQHR5cGU6IHN0YXQgdHlwZQo+ID4gPiA+
ICsgKiBAaWR4OiBzdGF0IGlkeAo+ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBGb3JtYXQgYW5kIGNv
cHkgdGhlIHN0cmluZ3MgZGVzY3JpYmVkIGJ5IHRoZSBjb25zdCBzdGF0aWMKPiA+ID4gPiBzdGF0
cyB2YWx1ZSBpbnRvCj4gPiA+ID4gKyAqIHRoZSBidWZmZXIgcG9pbnRlZCBhdCBieSBwLgo+ID4g
PiA+ICsgKgo+ID4gPiA+ICsgKiBUaGUgcGFyYW1ldGVyIEBzdGF0cyBpcyBldmFsdWF0ZWQgdHdp
Y2UsIHNvIHBhcmFtZXRlcnMgd2l0aAo+ID4gPiA+IHNpZGUgZWZmZWN0cwo+ID4gPiA+ICsgKiBz
aG91bGQgYmUgYXZvaWRlZC4gQWRkaXRpb25hbGx5LCBzdGF0cyBtdXN0IGJlIGFuIGFycmF5IHN1
Y2ggdGhhdAo+ID4gPiA+ICsgKiBBUlJBWV9TSVpFIGNhbiBiZSBjYWxsZWQgb24gaXQuCj4gPiA+
ID4gKyAqLwo+ID4gPiA+ICsjZGVmaW5lIGlkcGZfYWRkX3FzdGF0X3N0cmluZ3MocCwgc3RhdHMs
IHR5cGUsIGlkeCkgXAo+ID4gPiA+ICvCoMKgwqAgX19pZHBmX2FkZF9xc3RhdF9zdHJpbmdzKHAs
IHN0YXRzLCBBUlJBWV9TSVpFKHN0YXRzKSwgdHlwZSwgaWR4KQo+ID4gPiAKPiA+ID4gSGkgUGF2
YW4sIEhpIEFsYW4sCj4gPiA+IAo+ID4gPiBGV0lJVywgSSB0aGluayBfX2lkcGZfYWRkX3FzdGF0
X3N0cmluZ3MoKSBjb3VsZCBiZSBhIGZ1bmN0aW9uLgo+ID4gPiBJdCB3b3VsZCBnaXZlIHNvbWUg
dHlwZSBjaGVja2luZy4gQW5kIGF2b2lkIHBvc3NpYmxlIGFsaWFzaW5nIG9mIGlucHV0cy4KPiA+
ID4gQmFzaWNhbGx5LCBJIHRoaW5rIGZ1bmN0aW9ucyBzaG91bGQgYmUgdXNlZCB1bmxlc3MgdGhl
cmUgaXMgYSByZWFzb24KPiA+ID4gbm90IHRvLgo+ID4gPiAKPiA+ID4gLi4uCj4gPiAKPiA+IEdv
b2QgY2F0Y2gsIHdlJ2xsIHJlc29sdmUgaXQgaW4gdjMuCj4gCj4gVGhlIHJlYXNvbiBhIG1hY3Jv
IGlzIHVzZWQgaW4gdGhpcyBjYXNlIGlzIHRoYXQgaXQgYWxsb3dzCj4gX19pZHBmX2FkZF9xc3Rh
dF9zdHJpbmdzKCkgdG8gZ2V0IHRoZSBzaXplIG9mIHRoZSBhcnJheXMgcGFzc2VkIGJ5IHRoZQo+
IGNhbGxlci4gSXMgdGhlcmUgYSB3YXkgdG8gZG8gdGhpcyBpZiB3ZSBjb252ZXJ0IHRoZSBtYWNy
byB0byBhIGZ1bmN0aW9uPwoKVW5kZXJzdG9vZCwgaW4gdGhhdCBjYXNlIHBlcmhhcHMgYSBtYWNy
byBpcyBiZXN0IGFmdGVyIGFsbC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
