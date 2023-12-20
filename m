Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D1081964C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 02:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D04460E85;
	Wed, 20 Dec 2023 01:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D04460E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703035953;
	bh=u/vBeQSCbZ9u9W3+dIEWQvgfZIdB9QPpzoKJjZZnvrM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N5olRl5gYGpc5culzY6/oA0Z4EovJK9w3jHknj/kVZivMB+qK3sRnwzKsua4bspED
	 QPTsJhrXPsqbxiv10WRS6jBzpvCP1UEjDkK+zeNc4ThrRtZUqJpIVnxbt996U4GBZl
	 /RXbU5y1inhZUa6Vy6X3jHgTb5H1Kk/7nGE/bBw4tCtNVRw+6p+KriONBSZDdJec8c
	 sajD+6nz8Of2P4glmFAV1omQIymyM4v5Wv8ANzSz7i4Kn1n1E5nDO/AZC0v65sLvD3
	 KaK2JnYUnbjDDSymsrH16cNkrTcOBQXn/7IZ50TOrS5pvYXY+pYx91vkrlk8L1Fpx1
	 dRp3dGz+crguQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRl5KxdSqsgs; Wed, 20 Dec 2023 01:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD39F60E1B;
	Wed, 20 Dec 2023 01:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD39F60E1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87A011BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 01:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FC0D831CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 01:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FC0D831CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rhoj_6Zmc5gy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 01:32:24 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2074.outbound.protection.outlook.com [40.107.220.74])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A52082C7C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 01:32:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A52082C7C
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b7AhqBw1D4QX60NfLBBF96rjXjZiabPXfvUO6n/0dckE0JF9RwoSQotCnUXa4VC0L2XFHtf/54dazPKeEOM0Bgy8S56Y2bIUv5flc/zOvXWfDSbcpU3kyT6UrZmvt1NWTlZ/TbHp678SdpgPjnB5OY/pbFaXJt3eOar6fqOh5/BZuKvCznzOkOH++1UQemXvbu8+2xyH6w+R/8/01Xhw23YK2WdCdkO7iMziQRhRy6lz4S4/1QAeMwFbx/OLE6FpRbn3T2oCIJaSDdLk98m6UhPRepwuuUu8NFTKTK6ljVBfmDFMtE1Br36B7gNhRf3xzh/3C1FdQoLiAuAQVt6E6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vViIh5bjIKqZD50p6AVZQFctzXPODrrL9f0mOg+GB8U=;
 b=llGJN50DDMWjzWNuLH4oPBHZXh55h+Z+sO1dqDVoCTe0wemvu9/9sz1MDTnb4X0PnDXmmH/mMLA26yvafPHf/i0piGyV4e+fiXxSYm7IU9ESJSPF7ePdt4Ufhs4GP1TdfE8oVhSNWljpMzRlZ48Ha2EbBOez+9g3sTZ+wSHd7HWQcArrrNCX6A7/EOvIodvo7jzF2ilC1+bXVzKoPp37gnRXO0gtnl3BclQbUA+SKNkfWzmi7Id/e2zYkwiWu+SjbTU9GvbJLhrq/anxuA7CO7P0BranoZPh6VZMrkJvT+6FbiCZJ9Jt+uDILtVAKHYH3rrY/p+9fpI0zy79SCUVCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 SJ0PR12MB6832.namprd12.prod.outlook.com (2603:10b6:a03:47e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Wed, 20 Dec
 2023 01:32:22 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::3d14:1fe0:fcb0:958c]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::3d14:1fe0:fcb0:958c%2]) with mapi id 15.20.7091.028; Wed, 20 Dec 2023
 01:32:22 +0000
Message-ID: <bd95de9e-1dcc-4fbd-ba47-9d33c8bdc6fa@amd.com>
Date: Tue, 19 Dec 2023 17:32:18 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>,
 Kunwu Chan <chentao@kylinos.cn>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>
References: <20231208031950.47410-1-chentao@kylinos.cn>
 <BL0PR11MB31226B042632413AB8C12D63BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <BL0PR11MB31226B042632413AB8C12D63BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
X-ClientProxiedBy: PH8PR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:510:2cd::21) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|SJ0PR12MB6832:EE_
X-MS-Office365-Filtering-Correlation-Id: 3da65ac9-26b2-4bb1-5750-08dc00fb832d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NdwGdWlBI975jjGG+kmirrucUWrQQFFj78y3yl7PTxTuyKitcGQrfquv9YSW9n18v5jJdXOxwH4+2fpIpBYOS11n7HcLTqW+o5573JTmkkg/Q+m9kST5SBmARtEk2cXwj8/tqSWq9CprzT7sKaEjLTKolzGzAGHiUSbII1yf0gdx9gY6VJO+kkJ+L80V8Y6CAUmV1CogFJdrp1fPVoHy/0s6nLoP5WWxkbqsijPSxPq+PCSjndFkugTy6LGjUI19K0iZn85L89MyJQFBT+vACYS1hK6Pq+SXE+LQCAXwQ6SkkLAYfsesMm4epxTAaJr/FqErDBv6ZmcBi79gO+4MopdzXmAxXVOUSy/OKLYwqxduAeVpmw8+UvhtGdTWrKK1EPtUqnzUOoDv2OqkuRm09QFdxIeJV4cBiSC8/7t9x/3A6/D9YDXyRi/hkX8VHX/cbdwYTzcwz6owJOJk5vtneqTHkxkIQ+AY0JF72J5EmskMed61ZYQNm11Zc73NnJOVMzQxdhe8oG6+R58XxwbZFQx70+Uw0n4W7SLMBVwzZl8FMxbqtO3AT5hJbPQd9iO9ZVM55ghtuYxt4SKaxGvP0+POm+gE1jGY2f1P7Ie3IW7ZGPR5nZ6U5GgAdbPcDhvnyyQ5EzhVVUuE/8ZN3SPlE4jjAQfqshjV7s7oRyPfrqo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(136003)(396003)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(5660300002)(4326008)(8676002)(8936002)(2906002)(38100700002)(53546011)(6666004)(45080400002)(54906003)(316002)(66556008)(83380400001)(6512007)(110136005)(66476007)(7416002)(66946007)(478600001)(26005)(41300700001)(6506007)(31686004)(6486002)(86362001)(2616005)(31696002)(921008)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlFKSjY2ZVhIZVExSVQ3T2ozdTFnVWppKzVPU3Y2VERrNU92UDh5OXJCNmdY?=
 =?utf-8?B?VTkzRUhweU54Sm9XcEF5eUhoNnVUc1pES0x6VWhaQWZhSTd5MEJ1OGlVZFdK?=
 =?utf-8?B?anJpN2Npd3BUbDJITm52YkpOMm5xSXdYOWdtNzdTL0U1MmsvZS9ncmdqWC9h?=
 =?utf-8?B?OFVKOGx6ZlF5ejk5M1Q2Wi93UTh0MDFDNEVyeVd1MzBjd0JTVGpZOGJjM0dn?=
 =?utf-8?B?RkMzUzdmZDlvK09haThTTGxKRXgyNWZsbTh6Ykh4ZFdMZ0pNYnFVTGFkc2hu?=
 =?utf-8?B?NTcvdkU1eUtaT1doeDlOY0kzZ1pFdHo4NkxnQzV1UXJUeS8vTXg5WGR3YVg4?=
 =?utf-8?B?UmZCUGs5U2xwRTZTZERuWTJ3a1VBY3cyRGNManVQbUxCV3h1R3ZyNWVUUW02?=
 =?utf-8?B?enN4R2RhZE51eERmMFdtcVdvS2srakR4b3psVis2VmRpSU5sVXZRbFlqSlg5?=
 =?utf-8?B?dkdTczZSODNKZEh3dDl3UTV1TEFBb2djTTVwL2JhUzQ1a0h6T3VoM1BXamRG?=
 =?utf-8?B?TXEvbkF5N2pzbEJ3T3hRSnpGa0x3dEhPc2ltMldwayt5ME83VWg0Rk12VmNo?=
 =?utf-8?B?MEloSjdUcjRoaWNVcnVqaEdsZk5WYU9rT2g2T3dacHlCSHdQYWViOFgxMVAw?=
 =?utf-8?B?Vm8vdldtNkxaNGI1Ui9CcHl2Q3d2QUhUT1E5SWJDVzJMWThZdEpNOUZ3QmJP?=
 =?utf-8?B?OUJNZzFpN056NmZoalFEcE9ZbW1UWkFmVHByVUVLazNVekVXVnZzT1h0UWh3?=
 =?utf-8?B?aUU4RUJ4MXNwRXFBSzFxODVNVjI2TDNaQnh2ZXV3aEM4SmhabnZ2YkI1V0d3?=
 =?utf-8?B?aDA4alB5a21LWVdkbDJLbi9YeFZJdjVpaStqay96TnJuam5YeFk1WldldVhG?=
 =?utf-8?B?bkNRb01tMkttanB6RjFvNXg3Nnk5OU9XbG5iYVRnMnlJeWg1L28xSEVrZ0My?=
 =?utf-8?B?YmJtR0lkc3lrbjdTQW5rdGZtamE5dms2elBULzFkc0o5V3JuazZXRjA1VDFS?=
 =?utf-8?B?eVRnMDRQSUtCRzZBaUZKMWdlN2VLOEpORE9BdDBvTVBvUTFtbGxXMXFwc2ZP?=
 =?utf-8?B?cGZZME5FandQZUhOVjRXVG0zN1N0MVZ4bDhENmdTK2M4aGRLQVhUZzVpVUk4?=
 =?utf-8?B?ODV0dTIvbVZlQTZJQW1wc2k4QmJBU0pidFl4T3lJZ2dIK3BkbDBqWUZOejhj?=
 =?utf-8?B?OGU3cm9HNVZRbFpyVjJzRnRxVFZVR2o3UG9DQVplb2E1ZW52czhzSzlHMS9r?=
 =?utf-8?B?SC9NM0w0L1VwWUhaUTJTVEVQcWVkSFBsMFFjeHZuQnNjT0M4OTNzcXhqT09J?=
 =?utf-8?B?THNoRlBvcVMrcHJqUnNoMGtONXlNdVlWYk5DUjc0UFdXWG9iRmpDSzExRW1N?=
 =?utf-8?B?aXJFRWMwV2hEM010NmNjNm5iWDI4RCt6YUdNZmVrMkM5d0JGUkxwUDJKdzho?=
 =?utf-8?B?UUZsVCtIdnZnMFRxaUU4cUxtaXZNQlY1cDM0Z1grcTRPR1B2UUc0bXhKOSsw?=
 =?utf-8?B?V1puTXBmUzI3a3o5Tk1CcldFR09aYzJZTUFkZmZQcXlHbXFrWE9waUJkUCts?=
 =?utf-8?B?WFJXUHFmN3ZZRis0SFY3bU5JeHI1SHdxQzFvR2J4VVY2SHFnQ1FzRHJwYnNH?=
 =?utf-8?B?S0ZQSzUxMHowaWFpdW9FRmVrVmtad2k4Q3gwNHZmRHcrcmFhSVJJUFlJWS9B?=
 =?utf-8?B?a09aRWJicCtJeCtZSVFzdS9Bdzd0R2dMT29iZ1lBZVlnSHArUWFTbEVucDFv?=
 =?utf-8?B?VTNkM1BxekhvV3hKKzZSR1VhZTdHRkMwcHh0YzhMZkZJbXZFR0lXNWVvSjhu?=
 =?utf-8?B?MXp5V1o0cnJ3aEdYY1JlMDFRbGpLZndWSTZxc1BBLzRCdWlSeTNMTVR2clNt?=
 =?utf-8?B?bm1XanVCbzdqaklrbExkMGZyU2RaMitiSzNyQklndlpWNUZSVzRiSzFkR1Fa?=
 =?utf-8?B?anV3dWczc0hoeXhacG02Z2ovaVBrTFVGaE95djhHMnNTQ05vNnhuODRwYUlU?=
 =?utf-8?B?SU9oYzZTRkZFcSswSUxpL3FpeXlwdERlcExxSGhBZlc5Qkt1Ym5lWGdVMzUx?=
 =?utf-8?B?Yk82SG9UQWdWdUhQSVhKZlBuRWFhZXB3Y21mektuL3JtZnhHTUVrWGE5NnpP?=
 =?utf-8?Q?B1p9iFYl5jCGgNlubrEETxDxe?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da65ac9-26b2-4bb1-5750-08dc00fb832d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 01:32:21.8727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1urudOeTZ5tT+7EtehcTqQjeZbe7FUQtQTRmaqU7uc1Ru+Zw25TkksLqs5iuJubY0+IkdfZ9f4TE1Pdp/6/E5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6832
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vViIh5bjIKqZD50p6AVZQFctzXPODrrL9f0mOg+GB8U=;
 b=qwr4nrh2gihCbel3wEUQsF8qgsAibaL8vqEIRrmKdZ40tIY9XpSfs9DfIyG+nPz0uieI2YDg7oFCvOppZ7dTUs7cTIRpPQ2WlpMQ8WjvFyVqASiWNsx423+vWKTnLlz10JL7EsmX7KIzbG4wnVfVZ/sly2ah1SnzrxZuT+B9Zuk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=qwr4nrh2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/17/2023 9:54 PM, Pucha, HimasekharX Reddy wrote:
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kunwu Chan
>> Sent: Friday, December 8, 2023 8:50 AM
>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; jeffrey.t.kirsher@intel.com; shannon.nelson@amd.com
>> Cc: Kunwu Chan <chentao@kylinos.cn>; Kunwu Chan <kunwu.chan@hotmail.com>; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; intel-wired-lan@lists.osuosl.org; Simon Horman <horms@kernel.org>
>> Subject: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer size in i40e_dbg_command_read
>>
>> The size of "i40e_dbg_command_buf" is 256, the size of "name"
>> depends on "IFNAMSIZ", plus a null character and format size,
>> the total size is more than 256.
>>
>> Improve readability and maintainability by replacing a hardcoded string
>> allocation and formatting by the use of the kasprintf() helper.
>>
>> Fixes: 02e9c290814c ("i40e: debugfs interface")
>> Suggested-by: Simon Horman <horms@kernel.org>
>> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
>> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
>> ---
>> v2
>>     - Update the size calculation with IFNAMSIZ and sizeof(i40e_dbg_command_buf)
>> v3
>>     - Use kasprintf to improve readability and maintainability
>> v4
>>     - Fix memory leak in error path
>> v5
>>     - Change the order of labels
>> ---
>>   .../net/ethernet/intel/i40e/i40e_debugfs.c    | 20 ++++++++++---------
>>   1 file changed, 11 insertions(+), 9 deletions(-)
>>
> 
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
> 

Much of this debugfs command code was an early driver hack that probably 
never should have gone upstream in the form that it did.  The 
i40e_dbg_command_buf itself was originally meant as a scratchpad to put 
the 'last command processed', which was not really very useful, and as a 
static global that might be written by any number of instances of i40e 
devices, was problematic from the beginning.  Now, unless I'm mistaken, 
it looks like nothing is writing to the buffer at all anymore, so the 
buffer and the i40e_dbg_command_read() callback probably should just all 
go away rather than trying to pretty up some useless code.

sln
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
