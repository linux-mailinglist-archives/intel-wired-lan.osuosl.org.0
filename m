Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F180AF88
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 23:15:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEEDE6FA67;
	Fri,  8 Dec 2023 22:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEEDE6FA67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702073710;
	bh=G4iarYQMo8CIQMSBzSW1mtjftSAUPCdS7+Yv861VkpM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LzO6qaOKiJR+fkDX5t17vXbDhdDOT9A1rwrwekM1Wmyct7sCSMnMIqN+1sXRP6C8D
	 49d5R/FVdHqNgrP8swoxv7pivMO8ktZ8x3polX+GPydxafS4N9oyKTcKaaFscBaMET
	 UF8psrA0uF+xrs7Mr4kJEUNIIBHw1m9ayQm3VK1qkj3OdmEHa6w2GLl1ykV3S7Xre+
	 tkoyfYPOiabLcpVMs/5u6BINV755znK+UNGSDUje5A3Zw4poLC9yB4pPBkQN5u70W+
	 ClHB7Q2LKVFAuvOcDz5gXCMN7UY9Cv7URUqkNClkUd45EtOCIkxkhW3JEcBEttKRc3
	 ygMgBebZfndpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ena1UQIqPMpM; Fri,  8 Dec 2023 22:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CEBE6F64E;
	Fri,  8 Dec 2023 22:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CEBE6F64E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13BC61BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E829409DD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E829409DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zepFbyDUGmqv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 22:15:01 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2054.outbound.protection.outlook.com [40.107.96.54])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D55940518
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 22:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D55940518
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlUsg2BJC9h2CGDicVitrWrU+p50PT0mqX9XQhTbqP7YNO1glwURX6PfGgC7HgmI2O2924nAPXRJM9sQM8Qa89FcxEKQT5CImWJDNAwM/9hvG6zWp7NV3yPeFtdEmwFdxoTkwFpBfAH8ewM/BUrncreBm9K2P0XLDf7cmc3m49wN6b8vLhvMt4hus8Px7GblthWIsjltuIm0FWjBtbOfub0af3pZc3k9Sz/Xq57AKkqLVVneMxtRrjFxy1U3qqCxe2GsKeN0vaNTb+cX6cm5vFBMwbo85LoKISjcDQ8MZOa2breFUMpZ9qA/8835KCIV136F4VnIaFGueWDSZJLX7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v9gFhxmGgEWSMg3lHI5KNXhwals0gh/Zrf2gr1cba+8=;
 b=V0Ii92Y3D448t6k2WtFTYfUEle0F69QWoEp1E2hlmouDJQguNssZJHDQwsWsKj/laqj8PoDIzAFwnMrbnbHY92nMZd+26DzC+kQdRpHkjJtA6YaM3FvN/Wp/YY48iRpIumtRacdVyreT20ULWjMY4A4HTlaya9w0n/nJQu4Ww8AaaZ9VSaOFc0jdySm3cW3YrfZconEimxxKeiqzcGL0OVa+d+bAmlaffGDEjKNDFhyLJJ7LDVeLCsJwIrhOXinABOYRjnSDh8QVVbgr/1tAiF66C1tBcfgv/m3G6kYpKm56Ndz/2/ixBlfiFg9paBzNLUgW7/JMx5JeHG7NqO/hqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by IA1PR12MB6089.namprd12.prod.outlook.com (2603:10b6:208:3ef::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 22:14:57 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615%5]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 22:14:57 +0000
Message-ID: <e1c7d728-7687-3e76-0917-32e396a44739@amd.com>
Date: Fri, 8 Dec 2023 14:14:55 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Yahui Cao <yahui.cao@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-3-yahui.cao@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20231121025111.257597-3-yahui.cao@intel.com>
X-ClientProxiedBy: BYAPR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:a03:74::40) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|IA1PR12MB6089:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a53e1e5-b915-4b20-2f9a-08dbf83b1cc8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8j3n/tk96SWMyanWgxYA555xzh5mW48vf5xeNwFNb1tN3lWvfs8nLC3enoHFktfKCobBOCTL5PSYifGJX9l1ZivBKk4lH7R0jbkd5Do/q9AC8WJB1kcUmEqbgSjGJQEInUQ4vdJFGkfvGGGT0cLK2tdx3pEwri3Qmt4xSOATWiu/kjBhuNx+l5nP5+pZ1TTwdDAIEUAdYQieqoYWMSeuwCzgoQp3hi++/nR0YuLrrhMJeIFZsJrFgFADXCA9rr86DsGmD+epV0ip2l3z8vFhWcV8RhKWiFVyjp2UKVrhuKWIVRt8HIqAQnh3oDd2tyoOplN5bq/XzhldQdsFQDVw6P6xltgEl6zSOK/beKiLWtr+aiKz822LBiHNhHds7/QBpy3Fp3iaiuS+EJUTHx6pSVf4NYFMISLgCJtv4yIO4MryIR0qQB7pGL5XVseUZegsuVW+IuE40VWmxLvO8h3B9qtOlFdVlv1AcEKnL+DtgzFvZpbRuOTdCrcbon9AVszjjCxlsXWG7gfe/fsiRxkiQia7cawuIrl+sqs4mpKQvep+pBCATsfzwYfxA1wrC8Khiac5ZTl8YJr2jJwktgoA7T6M7bk3sJwjnAZyaRVEFJny+V4L3aKCJibiWjfQL0awYS4Sv1zM5HPNhAK+vSB9yf6ZUHjkfUcJnTq+pmIcHZFv5N4LMNdJOOh62a0o3qlo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(376002)(396003)(39860400002)(230273577357003)(230173577357003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(30864003)(66946007)(66476007)(66556008)(7416002)(316002)(2906002)(83380400001)(6512007)(31696002)(36756003)(26005)(8676002)(478600001)(38100700002)(4326008)(2616005)(6486002)(8936002)(53546011)(6506007)(41300700001)(31686004)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkVZeXRuMzBWK2JGdU9vaGt5MlBmTUZVMW1zSCtyV1lRTzdYSkpJYnFwTDYz?=
 =?utf-8?B?c0NnMkVoOTE2TkNNM05PN0RZTUtjV0dnMVdGZ2hWMUdDRlR2cHp0RXgyVzRt?=
 =?utf-8?B?cXBRYzFseDJKZGxyQ0hLYWhpWDBXZlppb1ZwTGxzeXJHMUc4cUYvZGVyOE9B?=
 =?utf-8?B?R3ovaHVDSkFNdCtqZ1Q3ZWFHd2VZakFGYy9LaUxidXNZcGFSTGlJdkQrQzd4?=
 =?utf-8?B?dlQrMjNWd2ZvaFJMV0hQS2JLZVozZmpZS0hML0NsWE9PbmliL1g3NVlkQnpZ?=
 =?utf-8?B?NldmdVNJdlQ0Uzk3MDgzZDA3NXdwd3pYb290VWYzUXlGam5lY3B6a3lSajdn?=
 =?utf-8?B?M3FmUUcxd1FDTU5SZDBlYnE1Q3VKWDZzOEtQVnN6djFORXl4QWVHa05Uc2p4?=
 =?utf-8?B?ZzBDSStkYU5qUzdZTkp2N1hKMHYvUHM5NnNpQklvZTFwaHQ0QjVPMUtNUWgx?=
 =?utf-8?B?VGJWYmEyRHQyb2JPUWU0TnF5M3dQdEcxNEJ0NE9WbC9rR1RlTTJKeE14aS9y?=
 =?utf-8?B?ZUlkeVVyM1NZejhZWkVCa0ZQakE3blMrYUxnWnhSV0Z0UjBYQ0NKM08waGVt?=
 =?utf-8?B?Tjh3eDlMVWRPb3Y3bEIzaWtUa2lwNzNPb0c4MlBzUlRoblBIK1ZKb0gvZ2Fo?=
 =?utf-8?B?aG96UWJ2UVlrQlRDZUxJY3NVMW5oSGo4WTZKUTJoaGIwOGlIUmw1UVBFWFNP?=
 =?utf-8?B?SnhjbExzQStISWxqQm9xM2U1aVBoNExDeFNWTlUyVjRlQUpTOS9ISDAxdU1B?=
 =?utf-8?B?K09obW9TTWtab1QyMUQvblBQWjd1UjJzWWtObDQySFNKZG5abmNieWVyeDQ1?=
 =?utf-8?B?ZUVvNHk4blV3dVgvaWdhZ25HQ0FiNXA4VG0xVHRqenE1YXNGZmhSS3lKQXoy?=
 =?utf-8?B?SzhuMjRSVFhJc1dEV1dhalBhbDZCOVZkdHdZT05oZkdZQkVndXovWXdKOXlR?=
 =?utf-8?B?ODNZK2kyeDFrYzY4d0EvbVpucHNYQldZN2N5MTAxMWFzUTdkUHRiZ0s5OWxK?=
 =?utf-8?B?dHJRcjYxSjRQOW8vZlFjUUdURHl0RG5mRHZXdDdscmFnanFIUzdaWUg2Qlh1?=
 =?utf-8?B?Vm9LV1ZWNnZobXUwSFFrMXFpZ2N4TGE0UnBLeFpycjFrUlZhaEg3VmNiSkxi?=
 =?utf-8?B?VlRnTXcrOFU2Mm92MFQ5cWxlalg3T1VOTHYySDdiMldjc0R3SEdrUjRFZWpP?=
 =?utf-8?B?aXNKYTV6MDYvc24ra2R4UkVwSjNXZXljRzE0cVVxOG4zUlRaUXBkRXJzZ1h2?=
 =?utf-8?B?UHY0T2ZyV3RCa01rMnJnMkJGdzJIL3JwVmhiNHZ6S2hDd1V2azRnNmNTM0RK?=
 =?utf-8?B?R20wKzBkSTJuZ1J2ZTBsV0JUV1IwRVNPK2hNMExGSmlVTUh6SmNpOVdWMmNr?=
 =?utf-8?B?LzZHTjExZzhVMndJNkNDL1NDTlQxRnh3cDZYejVid0NHY1lNTU1CZlgzRWpC?=
 =?utf-8?B?NXd3YXpOU0U0OTFVTWJHRVZzQUlrNFJiTFhrc2VjRXFVeE1qQ1lRMHk0SEZO?=
 =?utf-8?B?SjhIWm9ISnJjUTI1MEhOMW1CK0N2bFZ6MFdCNG90eVp1V2pQM1hGY2tWNUFZ?=
 =?utf-8?B?ZGgwUmRaRERUR3BUR2tNWndBbjJ3UVJRNW9rNHhWeGt3bmgzdWxFY1dYL2d3?=
 =?utf-8?B?eWVodXoyRUt3OWNlbDdWdXJwQm1DYmNOOEZ0d0VXUWl4RTlZeTJvNkt3OGJU?=
 =?utf-8?B?Q2dvM1VnR01teCs0WnVCL1FHWHptb05naHBmcys5OEFpSlVudFdWanZBQ1BR?=
 =?utf-8?B?MUhJbGsvL3FVeFRPTkFGR25jTVRpSll2ekJackdLazk4VHRLdGlWdTMwR0Ru?=
 =?utf-8?B?NU9xVWFleHVTQ2tBazV4YkNyZW5EbWZxYzRsT0YxVHczTWJjM1dPN25xak1x?=
 =?utf-8?B?VWdNQUN5Q2ZKakRWWWxGc0JCY3B1N2RSYWpVUTRxSmpTay9rRVhpTmsvY3JD?=
 =?utf-8?B?bCsvT3Z6Vm1xc3cwNkNwc0hTbVJiZTVKQUY2dWxzV21MallUWkNlbXR1NUdE?=
 =?utf-8?B?SEhiMG1mN2hTVzlWYW15Q0V0OTlMK0c4ZVhhYmZtaWxYbFh1NVE0VTNQV2po?=
 =?utf-8?B?OWJzM2ViUXNCbVJKc0toV3RZRVJTcU1sL01odlplTytmM2E3RDJmczhYYVNV?=
 =?utf-8?Q?3B/Cmp/jcUgNOUsmHD6vXSWjo?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a53e1e5-b915-4b20-2f9a-08dbf83b1cc8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 22:14:57.8469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZDAfrXDywtAdD7LP/l4taq7gIICziWVyqyOKcRDQsNfrb0JraklEPo5ZR0wqKmPy9UK8I4tNCpE7hsTAiwM/jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6089
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v9gFhxmGgEWSMg3lHI5KNXhwals0gh/Zrf2gr1cba+8=;
 b=Jp511EkC+2Xiu6/EHyjyt5uEH/csMCStwXzDEB3jg+kgbUg20UKnX1paqF7Q+WCKlRtOH1IRfk+7f2kQBGoBbtxCYZdXgzWdO48JAEUTxvTAfntjeQ7853jn2enyVsx3WON/OSrDUtnF1cMcqvd9cFH+AY7qUJJwkC49PemLY7g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=Jp511EkC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 02/12] ice: Add function
 to get and set TX queue context
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/20/2023 6:51 PM, Yahui Cao wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Export TX queue context get and set function which is consumed by linux
> live migration driver to save and load device state.

Nit, but I don't think "linux" needs to be mentioned here.

> 
> TX queue context contains static fields which does not change during TX
> traffic and dynamic fields which may change during TX traffic.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c   | 216 +++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  15 ++
>   .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
>   4 files changed, 239 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index d0a3bed00921..8577a5ef423e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1645,7 +1645,10 @@ ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>          return ice_get_ctx(ctx_buf, (u8 *)rlan_ctx, ice_rlan_ctx_info);
>   }
> 
> -/* LAN Tx Queue Context */
> +/* LAN Tx Queue Context used for set Tx config by ice_aqc_opc_add_txqs,
> + * Bit[0-175] is valid
> + */
> +
>   const struct ice_ctx_ele ice_tlan_ctx_info[] = {
>                                      /* Field                    Width   LSB */
>          ICE_CTX_STORE(ice_tlan_ctx, base,                       57,     0),
> @@ -1679,6 +1682,217 @@ const struct ice_ctx_ele ice_tlan_ctx_info[] = {
>          { 0 }
>   };
> 
> +/* LAN Tx Queue Context used for get Tx config from QTXCOMM_CNTX data,
> + * Bit[0-292] is valid, including internal queue state. Since internal
> + * queue state is dynamic field, its value will be cleared once queue
> + * is disabled
> + */
> +static const struct ice_ctx_ele ice_tlan_ctx_data_info[] = {
> +                                   /* Field                    Width   LSB */
> +       ICE_CTX_STORE(ice_tlan_ctx, base,                       57,     0),
> +       ICE_CTX_STORE(ice_tlan_ctx, port_num,                   3,      57),
> +       ICE_CTX_STORE(ice_tlan_ctx, cgd_num,                    5,      60),
> +       ICE_CTX_STORE(ice_tlan_ctx, pf_num,                     3,      65),
> +       ICE_CTX_STORE(ice_tlan_ctx, vmvf_num,                   10,     68),
> +       ICE_CTX_STORE(ice_tlan_ctx, vmvf_type,                  2,      78),
> +       ICE_CTX_STORE(ice_tlan_ctx, src_vsi,                    10,     80),
> +       ICE_CTX_STORE(ice_tlan_ctx, tsyn_ena,                   1,      90),
> +       ICE_CTX_STORE(ice_tlan_ctx, internal_usage_flag,        1,      91),
> +       ICE_CTX_STORE(ice_tlan_ctx, alt_vlan,                   1,      92),
> +       ICE_CTX_STORE(ice_tlan_ctx, cpuid,                      8,      93),
> +       ICE_CTX_STORE(ice_tlan_ctx, wb_mode,                    1,      101),
> +       ICE_CTX_STORE(ice_tlan_ctx, tphrd_desc,                 1,      102),
> +       ICE_CTX_STORE(ice_tlan_ctx, tphrd,                      1,      103),
> +       ICE_CTX_STORE(ice_tlan_ctx, tphwr_desc,                 1,      104),
> +       ICE_CTX_STORE(ice_tlan_ctx, cmpq_id,                    9,      105),
> +       ICE_CTX_STORE(ice_tlan_ctx, qnum_in_func,               14,     114),
> +       ICE_CTX_STORE(ice_tlan_ctx, itr_notification_mode,      1,      128),
> +       ICE_CTX_STORE(ice_tlan_ctx, adjust_prof_id,             6,      129),
> +       ICE_CTX_STORE(ice_tlan_ctx, qlen,                       13,     135),
> +       ICE_CTX_STORE(ice_tlan_ctx, quanta_prof_idx,            4,      148),
> +       ICE_CTX_STORE(ice_tlan_ctx, tso_ena,                    1,      152),
> +       ICE_CTX_STORE(ice_tlan_ctx, tso_qnum,                   11,     153),
> +       ICE_CTX_STORE(ice_tlan_ctx, legacy_int,                 1,      164),
> +       ICE_CTX_STORE(ice_tlan_ctx, drop_ena,                   1,      165),
> +       ICE_CTX_STORE(ice_tlan_ctx, cache_prof_idx,             2,      166),
> +       ICE_CTX_STORE(ice_tlan_ctx, pkt_shaper_prof_idx,        3,      168),
> +       ICE_CTX_STORE(ice_tlan_ctx, tail,                       13,     184),
> +       { 0 }
> +};
> +
> +/**
> + * ice_copy_txq_ctx_from_hw - Copy txq context register from HW
> + * @hw: pointer to the hardware structure
> + * @ice_txq_ctx: pointer to the txq context
> + *
> + * Copy txq context from HW register space to dense structure
> + */
> +static int
> +ice_copy_txq_ctx_from_hw(struct ice_hw *hw, u8 *ice_txq_ctx)
> +{
> +       u8 i;
> +
> +       if (!ice_txq_ctx)
> +               return -EINVAL;
> +
> +       /* Copy each dword separately from HW */
> +       for (i = 0; i < ICE_TXQ_CTX_SIZE_DWORDS; i++) {
> +               u32 *ctx = (u32 *)(ice_txq_ctx + (i * sizeof(u32)));
> +
> +               *ctx = rd32(hw, GLCOMM_QTX_CNTX_DATA(i));
> +
> +               ice_debug(hw, ICE_DBG_QCTX, "qtxdata[%d]: %08X\n", i, *ctx);
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * ice_copy_txq_ctx_to_hw - Copy txq context register into HW
> + * @hw: pointer to the hardware structure
> + * @ice_txq_ctx: pointer to the txq context
> + *
> + * Copy txq context from dense structure to HW register space
> + */
> +static int
> +ice_copy_txq_ctx_to_hw(struct ice_hw *hw, u8 *ice_txq_ctx)
> +{
> +       u8 i;
> +
> +       if (!ice_txq_ctx)
> +               return -EINVAL;
> +
> +       /* Copy each dword separately to HW */
> +       for (i = 0; i < ICE_TXQ_CTX_SIZE_DWORDS; i++) {
> +               u32 *ctx = (u32 *)(ice_txq_ctx + (i * sizeof(u32)));
> +
> +               wr32(hw, GLCOMM_QTX_CNTX_DATA(i), *ctx);
> +
> +               ice_debug(hw, ICE_DBG_QCTX, "qtxdata[%d]: %08X\n", i, *ctx);
> +       }
> +
> +       return 0;
> +}
> +
> +/* Configuration access to tx ring context(from PF) is done via indirect
> + * interface, GLCOMM_QTX_CNTX_CTL/DATA registers. However, there registers

s/there/these

> + * are shared by all the PFs with single PCI card. Hence multiplied PF may
> + * access there registers simultaneously, causing access conflicts. Then

s/there/these

> + * card-level grained locking is required to protect these registers from
> + * being competed by PF devices within the same card. However, there is no
> + * such kind of card-level locking supported. Introduce a coarse grained
> + * global lock which is shared by all the PF driver.

Not sure if this has any unexpected consequences, but the lock will also 
be shared between PFs of separate cards on the same system as well.

> + *
> + * The overall flow is to acquire the lock, read/write TXQ context through
> + * GLCOMM_QTX_CNTX_CTL/DATA indirect interface and release the lock once
> + * access is completed. In this way, only one PF can have access to TXQ
> + * context safely.
> + */
> +static DEFINE_MUTEX(ice_global_txq_ctx_lock); > +
> +/**
> + * ice_read_txq_ctx - Read txq context from HW
> + * @hw: pointer to the hardware structure
> + * @tlan_ctx: pointer to the txq context
> + * @txq_index: the index of the Tx queue
> + *
> + * Read txq context from HW register space and then convert it from dense
> + * structure to sparse
> + */
> +int
> +ice_read_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
> +                u32 txq_index)
> +{
> +       u8 ctx_buf[ICE_TXQ_CTX_SZ] = { 0 };
> +       int status;
> +       u32 txq_base;
> +       u32 cmd, reg;
> +
> +       if (!tlan_ctx)
> +               return -EINVAL;
> +
> +       if (txq_index > QTX_COMM_HEAD_MAX_INDEX)
> +               return -EINVAL;
> +
> +       /* Get TXQ base within card space */
> +       txq_base = rd32(hw, PFLAN_TX_QALLOC(hw->pf_id));
> +       txq_base = (txq_base & PFLAN_TX_QALLOC_FIRSTQ_M) >>
> +                  PFLAN_TX_QALLOC_FIRSTQ_S;
> +
> +       cmd = (GLCOMM_QTX_CNTX_CTL_CMD_READ
> +               << GLCOMM_QTX_CNTX_CTL_CMD_S) & GLCOMM_QTX_CNTX_CTL_CMD_M;
> +       reg = cmd | GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M |
> +             (((txq_base + txq_index) << GLCOMM_QTX_CNTX_CTL_QUEUE_ID_S) &
> +              GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M);
> +
> +       mutex_lock(&ice_global_txq_ctx_lock);
> +
> +       wr32(hw, GLCOMM_QTX_CNTX_CTL, reg);
> +       ice_flush(hw);
> +
> +       status = ice_copy_txq_ctx_from_hw(hw, ctx_buf);
> +       if (status) {
> +               mutex_unlock(&ice_global_txq_ctx_lock);
> +               return status;
> +       }
> +
> +       mutex_unlock(&ice_global_txq_ctx_lock);
> +
> +       return ice_get_ctx(ctx_buf, (u8 *)tlan_ctx, ice_tlan_ctx_data_info);
> +}
> +
> +/**
> + * ice_write_txq_ctx - Write txq context from HW
> + * @hw: pointer to the hardware structure
> + * @tlan_ctx: pointer to the txq context
> + * @txq_index: the index of the Tx queue
> + *
> + * Convert txq context from sparse to dense structure and then write
> + * it to HW register space
> + */
> +int
> +ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
> +                 u32 txq_index)
> +{
> +       u8 ctx_buf[ICE_TXQ_CTX_SZ] = { 0 };
> +       int status;
> +       u32 txq_base;
> +       u32 cmd, reg;
> +
> +       if (!tlan_ctx)
> +               return -EINVAL;
> +
> +       if (txq_index > QTX_COMM_HEAD_MAX_INDEX)
> +               return -EINVAL;
> +
> +       ice_set_ctx(hw, (u8 *)tlan_ctx, ctx_buf, ice_tlan_ctx_info);
> +
> +       /* Get TXQ base within card space */
> +       txq_base = rd32(hw, PFLAN_TX_QALLOC(hw->pf_id));
> +       txq_base = (txq_base & PFLAN_TX_QALLOC_FIRSTQ_M) >>
> +                  PFLAN_TX_QALLOC_FIRSTQ_S;
> +
> +       cmd = (GLCOMM_QTX_CNTX_CTL_CMD_WRITE_NO_DYN
> +               << GLCOMM_QTX_CNTX_CTL_CMD_S) & GLCOMM_QTX_CNTX_CTL_CMD_M;
> +       reg = cmd | GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M |
> +             (((txq_base + txq_index) << GLCOMM_QTX_CNTX_CTL_QUEUE_ID_S) &
> +              GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M);
> +
> +       mutex_lock(&ice_global_txq_ctx_lock);
> +
> +       status = ice_copy_txq_ctx_to_hw(hw, ctx_buf);
> +       if (status) {
> +               mutex_lock(&ice_global_txq_ctx_lock);
> +               return status;
> +       }
> +
> +       wr32(hw, GLCOMM_QTX_CNTX_CTL, reg);
> +       ice_flush(hw);
> +
> +       mutex_unlock(&ice_global_txq_ctx_lock);
> +
> +       return 0;
> +}
>   /* Sideband Queue command wrappers */
> 
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index df9c7f30592a..40fbb9088475 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -58,6 +58,12 @@ ice_write_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>   int
>   ice_read_rxq_ctx(struct ice_hw *hw, struct ice_rlan_ctx *rlan_ctx,
>                   u32 rxq_index);
> +int
> +ice_read_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
> +                u32 txq_index);
> +int
> +ice_write_txq_ctx(struct ice_hw *hw, struct ice_tlan_ctx *tlan_ctx,
> +                 u32 txq_index);
> 
>   int
>   ice_aq_get_rss_lut(struct ice_hw *hw, struct ice_aq_get_set_rss_lut_params *get_params);
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 86936b758ade..7410da715ad4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -8,6 +8,7 @@
> 
>   #define QTX_COMM_DBELL(_DBQM)                  (0x002C0000 + ((_DBQM) * 4))
>   #define QTX_COMM_HEAD(_DBQM)                   (0x000E0000 + ((_DBQM) * 4))
> +#define QTX_COMM_HEAD_MAX_INDEX                        16383
>   #define QTX_COMM_HEAD_HEAD_S                   0
>   #define QTX_COMM_HEAD_HEAD_M                   ICE_M(0x1FFF, 0)
>   #define PF_FW_ARQBAH                           0x00080180
> @@ -258,6 +259,9 @@
>   #define VPINT_ALLOC_PCI_VALID_M                        BIT(31)
>   #define VPINT_MBX_CTL(_VSI)                    (0x0016A000 + ((_VSI) * 4))
>   #define VPINT_MBX_CTL_CAUSE_ENA_M              BIT(30)
> +#define PFLAN_TX_QALLOC(_PF)                   (0x001D2580 + ((_PF) * 4))
> +#define PFLAN_TX_QALLOC_FIRSTQ_S               0
> +#define PFLAN_TX_QALLOC_FIRSTQ_M               ICE_M(0x3FFF, 0)
>   #define GLLAN_RCTL_0                           0x002941F8
>   #define QRX_CONTEXT(_i, _QRX)                  (0x00280000 + ((_i) * 8192 + (_QRX) * 4))
>   #define QRX_CTRL(_QRX)                         (0x00120000 + ((_QRX) * 4))
> @@ -362,6 +366,17 @@
>   #define GLNVM_ULD_POR_DONE_1_M                 BIT(8)
>   #define GLNVM_ULD_PCIER_DONE_2_M               BIT(9)
>   #define GLNVM_ULD_PE_DONE_M                    BIT(10)
> +#define GLCOMM_QTX_CNTX_CTL                    0x002D2DC8
> +#define GLCOMM_QTX_CNTX_CTL_QUEUE_ID_S         0
> +#define GLCOMM_QTX_CNTX_CTL_QUEUE_ID_M         ICE_M(0x3FFF, 0)
> +#define GLCOMM_QTX_CNTX_CTL_CMD_S              16
> +#define GLCOMM_QTX_CNTX_CTL_CMD_M              ICE_M(0x7, 16)
> +#define GLCOMM_QTX_CNTX_CTL_CMD_READ           0
> +#define GLCOMM_QTX_CNTX_CTL_CMD_WRITE          1
> +#define GLCOMM_QTX_CNTX_CTL_CMD_RESET          3
> +#define GLCOMM_QTX_CNTX_CTL_CMD_WRITE_NO_DYN   4
> +#define GLCOMM_QTX_CNTX_CTL_CMD_EXEC_M         BIT(19)
> +#define GLCOMM_QTX_CNTX_DATA(_i)               (0x002D2D40 + ((_i) * 4))
>   #define GLPCI_CNF2                             0x000BE004
>   #define GLPCI_CNF2_CACHELINE_SIZE_M            BIT(1)
>   #define PF_FUNC_RID                            0x0009E880
> diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> index 89f986a75cc8..79e07c863ae0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> @@ -431,6 +431,8 @@ enum ice_rx_flex_desc_status_error_1_bits {
> 
>   #define ICE_RXQ_CTX_SIZE_DWORDS                8
>   #define ICE_RXQ_CTX_SZ                 (ICE_RXQ_CTX_SIZE_DWORDS * sizeof(u32))
> +#define ICE_TXQ_CTX_SIZE_DWORDS                10
> +#define ICE_TXQ_CTX_SZ                 (ICE_TXQ_CTX_SIZE_DWORDS * sizeof(u32))
>   #define ICE_TX_CMPLTNQ_CTX_SIZE_DWORDS 22
>   #define ICE_TX_DRBELL_Q_CTX_SIZE_DWORDS        5
>   #define GLTCLAN_CQ_CNTX(i, CQ)         (GLTCLAN_CQ_CNTX0(CQ) + ((i) * 0x0800))
> @@ -649,6 +651,7 @@ struct ice_tlan_ctx {
>          u8 cache_prof_idx;
>          u8 pkt_shaper_prof_idx;
>          u8 int_q_state; /* width not needed - internal - DO NOT WRITE!!! */
> +       u16 tail;
>   };
> 
>   /* The ice_ptype_lkup table is used to convert from the 10-bit ptype in the
> --
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
