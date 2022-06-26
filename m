Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 093DD55BA31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jun 2022 15:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FD0A60E80;
	Mon, 27 Jun 2022 13:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FD0A60E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656338393;
	bh=s0+uD0zkQaFU4GeK7JEFvHrsMUogRXnzk4zx17fi0zk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e8OcODn+2atPSHLOJxCGIpTfJCv1WcdHgKu+m9AMnj57jl/U17my8RC3XdMll/7Ht
	 KN7gfynE130FAoU/XB9/pxmfY62C6sXLMp5xmwhr6t1qFlqYJ+ureS9VhmM091FMM0
	 pkn56c12jUxG5AJSB/LgFFlb7gY2fobmuS8HX7ozlMFMBgPDXPePX6oTs5n+farNiT
	 lv8a6yDpsmPIH+embq9ocuaVQ45G5vEEQTEYs+lzTqZZZYr3PoXKIN+k/EG0FfSC4p
	 lxwXynPP61rVyFo6IzK5OY5dGMIgEnB5RR85Om6caXJ3IVvVEB0n6WJHYgrr7mcJGx
	 gW24xl5+HzsNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOCz4FRNvh6z; Mon, 27 Jun 2022 13:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F4FF60AA4;
	Mon, 27 Jun 2022 13:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F4FF60AA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130691BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jun 2022 07:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E94E484705
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jun 2022 07:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E94E484705
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zK6C59T3r_BE for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Jun 2022 07:20:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BCAC83F69
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2101.outbound.protection.outlook.com [40.107.243.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9BCAC83F69
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Jun 2022 07:20:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPY2VdG58Nkmiy/btuvMXQBADHAJYsWYBlCkgDQEClOqu2djuS9mNQW6DOyWtfzHJ/p+LGHbLBCoaOv4aXNqCZec3IPQrq0LBbfrIzTwG2reiXLduO1NxXM8MnHxvt7cH7s5dp9Qv9NwXCOcLX1Q2BxSoxFh5IfVQ6pKmi7LIrjPEo0ZMXJBWXHwS61AL/pu5px4FvM2pfOiG8NYSg9KfXft97piTVMDSlWlh5etbUXBCmypjJQnpwMRR6OBhJy7Ph0yUTw36F3IB1VDxb63oe/O/k3sJXSOFg2c07PyuQ1ut3SjICfGt6ultj5kOXZhbTd/AgjLRX3FmZ67lfrmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mjBoKBLVMuXbN1y/JF9qyxu2p35QospYTATvh8Bmlr4=;
 b=AECApyI8j2fCTILkq6E4bQRoALaFEdg8563JHZplA6+6zTve7uxReBOKrYqNkuzYs+pMgnEvtuq8Funjf5BUUGC1T3TBYd0uuVGSiXbDMfoLkWi3ug6z8l7g51ku2r24ImYVZHsT24zPtndW9caiKPqdlhjVC9oqv7XZtqbcfGMSWlQ4YcYXViZGcrvxRChY0Te7fNzuiBk8lP7bb72KjrGAsMYw+FCllSrylZewm2Ni/Udbzu2GzHF5JH+TNk2lBoJC9Mw9jNL0t3qkT8grJlyStpuEwhoIcnomYfj8YQ1z5hZLK5CTkK9m1+8n/BNAcMUefJ34IWUF1hrr3RNa5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from DM5PR1301MB2172.namprd13.prod.outlook.com (2603:10b6:4:2d::21)
 by MWHPR13MB1439.namprd13.prod.outlook.com (2603:10b6:300:123::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.11; Sun, 26 Jun
 2022 07:20:18 +0000
Received: from DM5PR1301MB2172.namprd13.prod.outlook.com
 ([fe80::3046:bcc1:9b9a:84fa]) by DM5PR1301MB2172.namprd13.prod.outlook.com
 ([fe80::3046:bcc1:9b9a:84fa%4]) with mapi id 15.20.5373.017; Sun, 26 Jun 2022
 07:20:18 +0000
From: Baowen Zheng <baowen.zheng@corigine.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH net-next 1/4] flow_dissector: Add PPPoE dissectors
Thread-Index: AQHYh9BApOLLLi90qE+POmR0pB03/K1hSShg
Date: Sun, 26 Jun 2022 07:20:18 +0000
Message-ID: <DM5PR1301MB21725B441E51642967C8BB4FE7B69@DM5PR1301MB2172.namprd13.prod.outlook.com>
References: <20220624134134.13605-1-marcin.szycik@linux.intel.com>
 <20220624134134.13605-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20220624134134.13605-2-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88a354f5-a59b-44a7-4896-08da574452a0
x-ms-traffictypediagnostic: MWHPR13MB1439:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 05/EN7PkgAwsZao4ZuVh5q9C5m0LPPrCiH0rnfgNGX4kFZCec642OMZ3fUrnJE6zxCro6fXXp8iJguiXugFbIhDEKGFmMMy7sj9x4ryaPLCZ+sPm054Ra8Y4W6/V0oqiKLYy5fDR6MAco2m/Fnf8mypnUipsekYlzkMk+Q10xssrhTp+lubVbSVLByRDUedxNAZMoyGSTw3ytBVwr+uB6ogGaPro/ssYhVZd7i3iQaaUo5J3sBNXeq6+UAR77g5Ax9gOwBednrZoYf3XRyXFZ89xGmPQ/vbP2cmkhnd6q9lG5e7edwXdLkce7ZnvYw4oZKK2z+GFVmfdQW+kF/RL+AvKKiRc5FyYXKhISH0hb9+tMtZDQZNd0DK3uUdDxWhyP9+/w5NaCQnKXGhK1dyflQVVN8ea4/Ul4lm/vnLzY9wLaRpleGo3+ILz2gPiom3BxNYFnBqzB7emMwPDdf/dAoG8W+IxCiFVgwefHqZff9RHHqjyNK0n09ZDMoWbFJZ2xTIonee0z/Fch7ngql6VOTvXA49QvrekFJMCkviMJbm55Hm7UT0TiSV3yNTnSBWWVd2FTtj3GlXxnKrltBR7kX4DCgJVp0GbBvFh5yLVgdnJOj/5FRxKU9Uumgp2URMLCkRWkcIHhc/E1QQHcJomP4yTJWWOMgv54isrzpR59QsrzIlJJCI16iP1eoyD6Ihqe22C2rNhZqs1E0xgrX2I//7Kp1lUQghGK96Qer9VjGGaHThCp1X2LVOd9LPAZdUE2jzkAcMFwXhukpPQoQ3qXNoC9tiQ7lEypWCsHLej3mI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1301MB2172.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(346002)(39830400003)(366004)(396003)(136003)(376002)(55016003)(54906003)(71200400001)(38100700002)(44832011)(316002)(478600001)(186003)(7416002)(122000001)(110136005)(53546011)(33656002)(52536014)(38070700005)(5660300002)(8936002)(9686003)(66446008)(66946007)(8676002)(76116006)(64756008)(66476007)(83380400001)(41300700001)(66556008)(86362001)(2906002)(7696005)(26005)(4326008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M09uVjJocGprZElockwvbmFpV0U4TTI2QVQweGJQaFRYNlY4UCtpU3FHdGw3?=
 =?utf-8?B?MGlJMVowanlPdVdkZFdpRDhqVE5ZM0N6dnJqS0EzYTUwWENSc0FwMkQ2dHNI?=
 =?utf-8?B?OTdJQW9mdVp6WGY5OERPOWF5R2xnSDAySC9RZDZFSzRoNjVydUpiRi9Ecm5I?=
 =?utf-8?B?T0lpdm9mMG1mejh6disvcVVCQ2ZnaDJSQ1VBeTRhUXdFQVpTdW9tN0ZoWGZL?=
 =?utf-8?B?Qmw3N2tUVk12T2NqY1lucVJsMm9GalJHd016SmE5U3V6dWNDOHhrVFBoVXRv?=
 =?utf-8?B?MXlyUFpEd3BvblR1dUtNeVdxOXJ4d3RlaFdqanZSdFNJUmVEVkRIbnhEdDJm?=
 =?utf-8?B?YTluenNzejl1bldqa3U2NUkvNktIdm16V2ZQWDdnaXN4RnIrVlVLM2pENkxy?=
 =?utf-8?B?OFZqSlQ3UDB3RGtNbmd6ME9BQXF5VTZKb3BRYUhIdmhQakhyZFRIczhDT3p0?=
 =?utf-8?B?VVZocERHRVpRMGoyTU83NGdpZWdkYlJnSHltWE5XVWFlQkJSUWRzYmFnRXB5?=
 =?utf-8?B?TFEzWHhYWlNTVVdYZzlpK0JqcEIyeGxySFFzR1VLaGx1ZmlaSTJpZGJDWFUw?=
 =?utf-8?B?NlBKSHFkNGlVaEYwRUZKR0JsU1VhQUJkZ3FSSlI1UGFoWXdMN2ppQmJuOG05?=
 =?utf-8?B?ZmI1MHY5a2ZGV2hvaU5WN09lZU5OR0lMQ2tQTStKWFpNWjltZDVQMUQxRllp?=
 =?utf-8?B?ZEI3eG5WY3NrUVlBT3o0RlBaellqQWNDYjFndUl1QktvNUNxWVU0YVFVVmhJ?=
 =?utf-8?B?c3BvTlVyd2pXcHlKR2ExcHFQbkx1UzN5Rzc0KzlXdlQ4NWF1OGpqUGJQUU8w?=
 =?utf-8?B?UStSVHVSU3N0SHZCWVBmVkhnelZlcm9nbk1vQ0RFbUI4NElYTWRHeENWNXpq?=
 =?utf-8?B?ZDVuZjRtNTFKQnduWWsvekkyMjFIZVZBK3JRd2pqYXRhbktqMVBOV0JVS2VL?=
 =?utf-8?B?SmVmTTBxSHFjQW0wRnVzUUhvNVVETGhtbVZKOGIxbTc3di94RmhBanJjYlBl?=
 =?utf-8?B?QzhLdUZpMmpBYldVZ001V3YyangwS1U1OWtDREQ3eDd2bmNmbFoyRm5pQldH?=
 =?utf-8?B?YnJrdURLZUN2cEZjcEtVYlRQWUF4aEl6WmxvTUJ6MFlYRmdET0lVQVl2YlR6?=
 =?utf-8?B?Q2lmMUNYVG5zNXV0V2prZzVpb3VvYmxHb0ExY2FFMklqcTVMa0h6cG1POVRB?=
 =?utf-8?B?OFdoZTNmSTBoMFhEdC82M2U5NlI0NXc3STRWZjZoUE9JbHRxc3hTdjZiTFVu?=
 =?utf-8?B?M0NFcVExajZPZy9xUmRWby9HeTFuazhhTzQrb2N1a1RxVVRBVDFpQTg3a1RL?=
 =?utf-8?B?bTRpUndTVTJLcUNlN0VaeUp3cjlyd21NajFERlU2Sk51N2dQYWY1VFpNWWg5?=
 =?utf-8?B?RFRZL0Zzby9BZmZwWHhkUWI2VnZkOEtBeTN0UTJyNitUd0dYd2d6VStQZ01Y?=
 =?utf-8?B?K21ZREV1akZhaytkTklxVEtnYkh6VEN2NTVabFNTWUlHZFV2ZEJsSnZtRjhU?=
 =?utf-8?B?c3hRUE5UT2U0ZDExb0dlZDV3UFFJQnJ5b2VZNlYxQ2t4L0dTUkJWUTBJdWhE?=
 =?utf-8?B?MkExT2thT0JleVY1YzVKM2IvaFdrNGVYRFdFelhpTmgxa1JaeGhWMjZlamhI?=
 =?utf-8?B?Wk45UDNvWUNnSGsyZEcwQllPc3hVQ0NKWDdLQVhLNzdzU3lNUTdkMnJZcjZk?=
 =?utf-8?B?bktkNFdyUVBDNUlzc0NoUTlXRUlwNDVJN08zYndjaGIrazRJR01zN2l1VkVY?=
 =?utf-8?B?eTlFWFlKR1pYTTRQSFNWM29jYlNXdHpqa1RnQmNicWQvWURzQTVMb2psMUVU?=
 =?utf-8?B?MDZxV3Qzc2hwLzlYbCt2NERrNUZNN1JLKzIzRUxnaVBQWXVzOUFRR1ppSEx4?=
 =?utf-8?B?UERvTjNHV0FidjNMdlZhazJkaHkwR3VlRmk1a1crZ1BhNWkwNVJXckhsZnFL?=
 =?utf-8?B?dlNMRVIxR0N3U2RZRndmSGl4bm51YmNCajYxbTFTNXJ2ZjMrYUNIdlNTdlVT?=
 =?utf-8?B?VWlERkNkZGFiZDJ4ZmNKMHorbWJBOVNMYUhma2ZUcXVJb2J4U2tlR2tKNEVx?=
 =?utf-8?B?VjhsT1FxeUVLQi9oanJOOTZwNWtaMkZjMnpTUTNZdkJENTdEckdFdE9TWGYw?=
 =?utf-8?Q?vaGbKYjtAOQobb439SIk62qvf?=
MIME-Version: 1.0
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1301MB2172.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a354f5-a59b-44a7-4896-08da574452a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2022 07:20:18.1818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s+V+FDH0VmHN2FSKy0QOAD4Pq3sfrl8Uz1W/rXPsj5EEx8l2Pty30BuTXczgfAy0HWtx6kQyQMQ1pK/7BOX0f0LIObTj9s8EnWlAPslz6ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1439
X-Mailman-Approved-At: Mon, 27 Jun 2022 13:59:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjBoKBLVMuXbN1y/JF9qyxu2p35QospYTATvh8Bmlr4=;
 b=vspkxO7cPSc1Iu9udBErBKtSkIA7CKX4Y5AN6hEF+MaVeEeapY6O5dLw6nmOxF5Pe8KH7u1YtDwEx8ku44SPlDuucIiOdN8WsomgxZkz7Zt+mIH39v02f9RRvg3hd8HLdBquzELv5TdjTPqzkhY36SWA2lkR4S5ArMjmoqqAQdI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=vspkxO7c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 1/4] flow_dissector: Add
 PPPoE dissectors
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
Cc: "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "jhs@mojatatu.com" <jhs@mojatatu.com>,
 Simon Horman <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "elic@nvidia.com" <elic@nvidia.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday, June 24, 2022 9:42 PM, Marcin Szycik wrote:

>Allow to dissect PPPoE specific fields which are:
>- session ID (16 bits)
>- ppp protocol (16 bits)
>
>The goal is to make the following TC command possible:
>
>  # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
>      flower \
>        pppoe_sid 12 \
>        ppp_proto ip \
>      action drop
>
>Note that only PPPoE Session is supported.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> include/net/flow_dissector.h | 11 ++++++++
> net/core/flow_dissector.c    | 51 +++++++++++++++++++++++++++++++-----
> 2 files changed, 56 insertions(+), 6 deletions(-)
>
>diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h index
>a4c6057c7097..8ff40c7c3f1c 100644
>--- a/include/net/flow_dissector.h
>+++ b/include/net/flow_dissector.h
>@@ -261,6 +261,16 @@ struct flow_dissector_key_num_of_vlans {
> 	u8 num_of_vlans;
> };
>
[..]
>+static bool is_ppp_proto_supported(__be16 proto) {
>+	switch (proto) {
>+	case htons(PPP_AT):
>+	case htons(PPP_IPX):
>+	case htons(PPP_VJC_COMP):
>+	case htons(PPP_VJC_UNCOMP):
>+	case htons(PPP_MP):
>+	case htons(PPP_COMPFRAG):
>+	case htons(PPP_COMP):
>+	case htons(PPP_MPLS_UC):
>+	case htons(PPP_MPLS_MC):
>+	case htons(PPP_IPCP):
>+	case htons(PPP_ATCP):
>+	case htons(PPP_IPXCP):
>+	case htons(PPP_IPV6CP):
>+	case htons(PPP_CCPFRAG):
>+	case htons(PPP_MPLSCP):
>+	case htons(PPP_LCP):
>+	case htons(PPP_PAP):
>+	case htons(PPP_LQR):
>+	case htons(PPP_CHAP):
>+	case htons(PPP_CBCP):
>+		return true;
>+	default:
>+		return false;
>+	}
>+}
>+
Just a suggestion, for the above code segment, will it be more clean to change as the format:
	switch (ntohs(proto)) {
	case PPP_AT:
	case PPP_IPX:
	case PPP_VJC_COMP:
then you will not need to call function of htons repeatedly.
> /**
>  * __skb_flow_dissect - extract the flow_keys struct and return it
>  * @net: associated network namespace, derived from @skb if NULL @@ -
>1221,19 +1250,29 @@ bool __skb_flow_dissect(const struct net *net,
> 		}
>
> 		nhoff += PPPOE_SES_HLEN;
>-		switch (hdr->proto) {
>-		case htons(PPP_IP):
>+		if (hdr->proto == htons(PPP_IP)) {
> 			proto = htons(ETH_P_IP);
> 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
>-			break;
>-		case htons(PPP_IPV6):
>+		} else if (hdr->proto == htons(PPP_IPV6)) {
> 			proto = htons(ETH_P_IPV6);
> 			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
>-			break;
>-		default:
>+		} else if (is_ppp_proto_supported(hdr->proto)) {
>+			fdret = FLOW_DISSECT_RET_OUT_GOOD;
>+		} else {
> 			fdret = FLOW_DISSECT_RET_OUT_BAD;
> 			break;
> 		}
>+
>+		if (dissector_uses_key(flow_dissector,
>+				       FLOW_DISSECTOR_KEY_PPPOE)) {
>+			struct flow_dissector_key_pppoe *key_pppoe;
>+
>+			key_pppoe =
>skb_flow_dissector_target(flow_dissector,
>+
>FLOW_DISSECTOR_KEY_PPPOE,
>+							      target_container);
>+			key_pppoe->session_id = ntohs(hdr->hdr.sid);
>+			key_pppoe->ppp_proto = hdr->proto;
>+		}
> 		break;
> 	}
> 	case htons(ETH_P_TIPC): {
>--
>2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
