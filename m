Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4DE74879C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 459596104A;
	Wed,  5 Jul 2023 15:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 459596104A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570130;
	bh=pL10ABKwkpRG3Cl47J8yAxvvWNoQQDVIGSRRIWOP0bc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fdiYcMgUAQIBk8r/fTxyNvxNbL2xJEGu3Bb0JIbaZsdARPgWWpKUHjR8Zf39IRWGA
	 GFT4cRaC6YVy0Ydt2C/840Gme1CSYsSw3EoUtt4C6lBvoS2oTbjIbXfMz6+lk0+gw0
	 oonPOzYEwUbWRz9Oxcljq5pWlfAwUxfNtw1oWF5dtE8SQSdZuze65nB77/1IBSiwk5
	 T87+L16hvELG3Vb/l3DM8aQ1THFtN54z0K8m+9btH0JPfgK8AzuQhZk31JIKg+Lsic
	 FixjXyXXqxMabV7/it9P1VZfdH3VMGgzw3oV/9Vj2EM8faEoKqoszLI0/5lzzj28pj
	 H6IAZ530i/H3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMqU_3R6UM3s; Wed,  5 Jul 2023 15:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05D2461067;
	Wed,  5 Jul 2023 15:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D2461067
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABF341BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 18:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 832B760A99
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 18:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 832B760A99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6kxXMjbiIDQ6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 18:48:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EF8A607F1
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01on2129.outbound.protection.outlook.com [40.107.13.129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EF8A607F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 18:48:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOz1KOYGE6fCrgaaIuqvtzTg21x+nuhMi1iHqLSlYq641H/X0pi2WIHHl3kQJCY0HnfRDGFMaQ+/tWn5+o7dmQp7UEPhEfW8SzW4Uns47weZtVmTdOF+tS4n9ki6mslNQHkPoqngpn5M33EX3RR1oFG2KbCC+QJ5jFQmieTmAmmw6J0E6QL6a3B9pWEtXAgpV7Ve1kyxJG9/IWvAh4a2fiUN7NnLdXdhDmpqaajDbnmbo/WXTifqO3/xB+XGVKSqPEtRJA3H+R8Otgn2lAzVh3xWOZFJjnqGdpciyzpLJwp+iqIm1H66A+/jSZrFdp8h5lGk7Dc3aBbRpEYIHq1l8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JsDMbOfd2kZo6y8uTEtsaVZ9TWXr7ncwonJ9R/8a7Yk=;
 b=FItqXijz5qprSi+2brI5YPAAgmpIfFCphUX/bv8lKdY7AchgXpi1X08vBvD2XkVK9gw5SfuMKgKAun94tk7NybF6mgZlxWdJwYzwMdlzMU8rJabnELlSnHipb6ty/bxFvtHt7me9q/1laYbEjPmiYu6RygRn+p13vjgmCEZTx5USmVv9Lnavjodge860zqRV5Mt4zpzt1Dj7a7eIYsHz5pznumBf3zuPvl9jmIRMQbgVX/5BZ+5Ip5IHafO+V9gu1kDxNjOiEnaZDRywxN5n3T9e0gl3gNJD4oF7f4JLhVIBCRZl0pvjPW0sP7dFKI8f5y7cNbIz4AiwTJOkYN9vuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AS8P189MB2269.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:572::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 18:48:07 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 18:48:06 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Thread-Topic: [PATCH 0/4] igb: Add support for AF_XDP zero-copy
Thread-Index: AQHZrl7iO+E1gxxktkmbyg3qani+jq+pvguAgAAvLvA=
Date: Tue, 4 Jul 2023 18:48:06 +0000
Message-ID: <DBBP189MB14338551FD48E1F8B401DB6C952EA@DBBP189MB1433.EURP189.PROD.OUTLOOK.COM>
References: <20230704095915.9750-1-sriram.yagnaraman@est.tech>
 <ZKQ8pXhU/7CRseIi@boxer>
In-Reply-To: <ZKQ8pXhU/7CRseIi@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBBP189MB1433:EE_|AS8P189MB2269:EE_
x-ms-office365-filtering-correlation-id: e0c495c0-86d2-4e03-0a6b-08db7cbf34bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LiJjiJfShRRBND4q2/NTpCtg6McZlBLD+VKycmDo2lCce4p4YqK37nousAUQDH+Kg6zHQ2IDoQu2QAjrXwqwffcBIMNz03EzE8ZXuC68LsGmSIWagxkWLpaTvVBKv5P4Grpm3h8H+5KdJF/xQrEGYAbUuod0OQjW8jcV7tMrNWT9NVFk6TLfMRLdQXqXujLlurn+02Jj29NisRKBwZEROAOlaVW8gk0pBAI28/qT2vlaZpr/SDdXpi30ksmFnipxy+CFF9V0lWS7GSHZ0WEZGlrjwZLuXhfN72i1e4s0e9DmCr/S0vhjCFy0KSyRAjEwgUCq9FTiUeTO7FrrbK/Fals0IDXntSImJNx+SK9rGFIFMavKrW1FBMlOLXy+tPYb9c747B8kbSYq4tnwpJX25XmKbn7ECfJ87qfG/jQ1Y/cKQVAPBIQkxnEffnFt4DMb3HF7/xavyNUHvRRD9HVV8F/I1s0gCHljdqhTKJnDuGSdrRMwopBYP5x3P1JoVb1PyEVoqNrhjN5m604N9kQUOIuUn4NBuQlElS7JH4c7Aekl4OTknwS+PBiQXE/w7+cIVXLNESoBI72x+mkEXTtv8BAeVcE7k7psVWDXbxkOhPiGtJXFlNV3dLCdvxKtLHnj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(39840400004)(396003)(376002)(366004)(451199021)(7416002)(44832011)(38070700005)(33656002)(83380400001)(86362001)(122000001)(38100700002)(53546011)(186003)(9686003)(26005)(6506007)(7696005)(55016003)(71200400001)(478600001)(41300700001)(8676002)(54906003)(66946007)(66446008)(64756008)(66476007)(6916009)(66556008)(316002)(4326008)(76116006)(8936002)(5660300002)(52536014)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmZsZ2NYeXJYbGJiaEM1Rmx5Q3NVMkFIQXZEekdTNHl5R2VDOURsQU80N2Rl?=
 =?utf-8?B?NUtYdS9PMTZROUhNN0NSR1FqZlhwSlE4ZnpKMWVNT25MSFBNYVQvT0Q3MTRz?=
 =?utf-8?B?WGpmbkxXZkVLSUtDdTZ3SDNMMUZpN1dGVGVtM1N2QTVFUnRyZ0pJZlFLb2NM?=
 =?utf-8?B?OWtRU1FlZy9UOVRIOU90UUVCUFZYVWVVeGh0d2tHQWNKMy94Uysvd3o0QkE1?=
 =?utf-8?B?MUhtcjRpbmRtbjlib1orWEJQM2RtY2NOenA5UnNvV0ZON1h6MlhmSmlocWlN?=
 =?utf-8?B?alBNSndKSmZPVFI3YXBUVlUvOGYrV3ZMOVJzYndTTFNRK2JtN3ZkV25iOE0x?=
 =?utf-8?B?OC9sWTNodHJxY05pOGdST2x5N25ZWmFCRHFNendWUS92eTBYWlR6dHR3OHhP?=
 =?utf-8?B?K00vbjhSeUFvY08rTFlZWWR5MnhGcDh1U3RZVm9iODVZeTVBSS9CU2phRVR2?=
 =?utf-8?B?all0ejNCallrT0oya0dmMzZSTFNQVDhsaHZQR01KSmVRU2RqU3E4YzJ4cDA0?=
 =?utf-8?B?Vmxzemhad3F4VkJoS2FtMVVJWi83SWVBY3pnSmdFTHJ4aDBJbFBQS1Jyck1I?=
 =?utf-8?B?c3hZcU5hSlptMTVFcUZhVUEydUd1VDJhYmk5UVlsQ2JobGNZaitNSlhWQkxs?=
 =?utf-8?B?S28xQk5pS2c0UHlJazRISVZkM1RibkdxTHdTcWE3TVRJdVl5ZXI4WFV5NW9C?=
 =?utf-8?B?eUNmdENldHhXNmRkTHpIc2g4QzNCOXZtY1NMODZ2MVlNbGtIcVdwUHJrZTY0?=
 =?utf-8?B?TTlCV1l0QkFkVWFnL0x1ajZMdDJXL0ppdWYvZ1RVc2Q0QU1CVitZTkpLaTkv?=
 =?utf-8?B?WVBidVdjVTBza0tXblgyRzlteGdnTDZoNXl3dnBvanlUNXkybERnZXF1UVpn?=
 =?utf-8?B?bmVYVFNJVW9KeUY2azRoR2swelIrODlSemxabzBvMytUcEI0OCtmcit6azZj?=
 =?utf-8?B?OVhoSHgrZWtRZzcyU3dENEhBRkhTV3Y0QXVDa2xVNUR0SWtZSGhyYzJIMkdL?=
 =?utf-8?B?YWhDMmJYNE05S3h4L201QWRJU1REdXcreEw2czF2M0xvbVNOdC80NmVDRTFT?=
 =?utf-8?B?Sy91RVZJZW56YzJFZWxEVXdBeFhRTTVtSlB5d0VRRkw0ZmorWlBDRHM1QlhD?=
 =?utf-8?B?R3VjNE5rZzcxVUpCUWoyVnNWZXhiRVlic3YrdGc2bENPa0hXcll5a21KQS9r?=
 =?utf-8?B?NERra051RFBoU2dBWFl2NWJhdVhNT2JGOW1odmx2RE1HeEd5eVlEZHIvQWNv?=
 =?utf-8?B?Wm5oNVU5Y0ZWWXF6djJCYko2Wkd5dXlKZGhaSlJkM2hEOXd4UmpyLys2QjM0?=
 =?utf-8?B?UFFvQ3lvVGpwSHA3cWlDbGxabnlkeUFnd05NZ0xDdnVPbGx1REh2aVZ1NVZy?=
 =?utf-8?B?NkpFVmwvbXd2VStJZTBHV3RBNzNqOW5CUUZOZ3NKb2ZiZTJrc1U1SGVCOGtO?=
 =?utf-8?B?a1NRSFZqdG9kY2VQWklMczJhM3llTDNQYkh0cjIyTWprdXozMWpOL2dveEZD?=
 =?utf-8?B?VUpwYXpTZkhkVkRwN01wa2VPbzgranNHRGtoMjI0Q2hXTGtWbkYvaEpJbDFR?=
 =?utf-8?B?cC9jTGExeVJNUUdhYUhBSTl0SCtXRHVVdWxkUzA0aEh4R1J4VSs4TXQvWTlr?=
 =?utf-8?B?c01GaFhXTE1pdjhtdVlueXY5MVlHVWZLUGlYL21wc2tEYy9Wc25QTWFSWWtU?=
 =?utf-8?B?UFd5S2VlYU1OQmIrZFBCTVdTZThBS21pbFRGVDBiWkExdm03L2dXb3JuYjZ0?=
 =?utf-8?B?dndLU2J1WVdmbWF2aE5IbDArYlRaQlNLd21jY3NON2lJUXpKeUF4dVVuUkJR?=
 =?utf-8?B?bVRqMC9yQUhzRmxqQkhHelhDSDJWSUdTeEQydG95N1ZkaExoUmhrVFh3aFZI?=
 =?utf-8?B?dXBqTjJQWnlabUJzdDFVNnJaVktVS2J0eFpHOTFacENVRUNJNHQ4eGxhc253?=
 =?utf-8?B?aHNCVFNsZ29PQzR5YWlBNEsxcUtOY3B4TFVNVXlNUXAwSHFwQzVKVlBqem5z?=
 =?utf-8?B?RW5FS3BtSFNtdEFsZUpZbmxGTFg3SUNRVk16aUFXU1VPL0NnUGdQbmFOM05Y?=
 =?utf-8?B?bFZLYmxnem5nZ21QWW1acUxQcmJ4Qit1OTRXcGRDalVLMHl4ODBldk1WQVFV?=
 =?utf-8?Q?/NBna8fCogd/BQPZh0t1aZYpu?=
MIME-Version: 1.0
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e0c495c0-86d2-4e03-0a6b-08db7cbf34bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 18:48:06.8132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vfuCdhJWaqloZzkV6PrCsnrhgINJUyfXj6qnWyZWzGBznGwt+XWpqKcGZALmhoUzs3uQYGIxUvQkvfpJIJnsRMJyhSBJYAsxmpisqbOYOUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P189MB2269
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JsDMbOfd2kZo6y8uTEtsaVZ9TWXr7ncwonJ9R/8a7Yk=;
 b=hiFk0VBav1GNJmefWSSaNmowXWPdaby793XqjhIKSadUaoR7EF5NOQw171R/tJd5Ea481SkOFeEBGNb0yc572Z/QCwMc/uhf8PDkXlpuEKwgXFB7/iF5/4FWqKpHH3nIN2SL0LonFFA5UyV/XunNjb9vnfeHgCTf+uMIQ2cnvRY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=hiFk0VBa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: Re: [Intel-wired-lan] [PATCH 0/4] igb: Add support for AF_XDP
 zero-copy
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Sent: Tuesday, 4 July 2023 17:37
> To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> Cc: intel-wired-lan@lists.osuosl.org; bpf@vger.kernel.org;
> netdev@vger.kernel.org; Jesse Brandeburg <jesse.brandeburg@intel.com>;
> Tony Nguyen <anthony.l.nguyen@intel.com>; David S . Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Alexei
> Starovoitov <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>;
> Jesper Dangaard Brouer <hawk@kernel.org>; John Fastabend
> <john.fastabend@gmail.com>
> Subject: Re: [PATCH 0/4] igb: Add support for AF_XDP zero-copy
> 
> On Tue, Jul 04, 2023 at 11:59:11AM +0200, Sriram Yagnaraman wrote:
> 
> Hi Sriram,
> 
> > Disclaimer: My first patches to Intel drivers, implemented AF_XDP
> > zero-copy feature which seemed to be missing for igb. Not sure if it
> > was a conscious choice to not spend time implementing this for older
> > devices, nevertheless I send them to the list for review.
> >
> > The first couple of patches adds helper funcctions to prepare for
> > AF_XDP zero-copy support which comes in the last couple of patches,
> > one each for Rx and TX paths.
> 
> please include perf numbers in cover letter, CC AF_XDP maintainers and use
> batch XSK APIs: xsk_buff_alloc_batch(), xsk_tx_peek_release_desc_batch().
> 
> Thanks!
> 

Thank you so much for the quick reply. I will respin addressing your comments.

For the perf numbers, I must confess, I only used the newly delivered IGB device emulation in qemu. I don't have access to a real NIC to provide realistic numbers. But of course, I can provide a comparison between XSK_COPY and XSK_ZEROCOPY using the emulator.
	
> >
> > Sriram Yagnaraman (4):
> >   igb: prepare for AF_XDP zero-copy support
> >   igb: Introduce txrx ring enable/disable functions
> >   igb: add AF_XDP zero-copy Rx support
> >   igb: add AF_XDP zero-copy Tx support
> >
> >  drivers/net/ethernet/intel/igb/Makefile   |   2 +-
> >  drivers/net/ethernet/intel/igb/igb.h      |  52 ++-
> >  drivers/net/ethernet/intel/igb/igb_main.c | 178 +++++++--
> > drivers/net/ethernet/intel/igb/igb_xsk.c  | 434 ++++++++++++++++++++++
> >  4 files changed, 633 insertions(+), 33 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/igb/igb_xsk.c
> >
> > --
> > 2.34.1
> >
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
