Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 055BD3DA574
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jul 2021 16:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84E4E83AF0;
	Thu, 29 Jul 2021 14:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pydXpwCj9X3k; Thu, 29 Jul 2021 14:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A1068372B;
	Thu, 29 Jul 2021 14:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 734421BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 10:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EA7E606D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 10:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=juniper.net header.b="PZ47+oUp";
 dkim=pass (1024-bit key) header.d=juniper.net header.b="gzmcSUIY"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUd6rLnzVxS5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jul 2021 10:36:25 +0000 (UTC)
X-Greylist: delayed 00:59:05 by SQLgrey-1.8.0
Received: from mx0b-00273201.pphosted.com (mx0a-00273201.pphosted.com
 [208.84.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 086C9605AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jul 2021 10:36:24 +0000 (UTC)
Received: from pps.filterd (m0108157.ppops.net [127.0.0.1])
 by mx0a-00273201.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16T9TC69031262; Thu, 29 Jul 2021 02:37:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=PPS1017; bh=vdOfFG2NY0hleCsyRLT5p8c3s7XOK98kdzz3DpWV3iw=;
 b=PZ47+oUpCLpJ5z1bWu2ownP/EfM5SYl8NDn0TcuwpxGIOaDKOsQBEELUpzDkZzBTbpC7
 FfCvhJtKSWXuJDrNb2O3OrCFJzUFipmwD+PrTMc6K73aAmwTZwO4m2tupz2UZZOxfOaa
 rjUHs2PDi+9ltkcnXccX0dSfztq1CH9+u8eLHMmTLR8KssQdxqRwb8TXNnoAHIHsrO7W
 s1LTgw0+Hv5ULHWGVi5vcXLJdnXkHDtyBlhs0QBiQkyvImF0+hYwueohGeMNRtQELpjS
 wBWNuDWqe1Rnt3WC65si7yDnMspzw7sfq2ofmccFLcjba3TKKR/go/tBnNZRPHeoj9IP QA== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
 by mx0a-00273201.pphosted.com with ESMTP id 3a3r77861n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 29 Jul 2021 02:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bLLJ70nRiFNuL/XhwWl16PyS0de6j/mWywb9ndGhr6s3uBjE/990T5uaBs0/kZIgWphUM3nzzlp+/LW6G2Iu2ben/03rGLTyGhWWbygSFT/4F0H7gO9Lg05Lrp/hK7i08fUENlBkHzwGjGHW5hyxknGXIXBCcVdF0vBLdbcBU9sRbyLz3Toll7+TUV5oyvV2mpRs9aBa3YYhfVYO1poIJie4bEOOaCceZ3bJElOnxj6guDS2AUH2gXp52m28G2s7E8AYuX+ozKBV+gJhvsZnKgvbTolZ4mm+Dvyr8hr4Fbw0v4Cp0jcUmG/87rJPNDs7w4iTM9lGRvkw2LbA873iRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdOfFG2NY0hleCsyRLT5p8c3s7XOK98kdzz3DpWV3iw=;
 b=mX2i8/sgfxMIXZIpoXEWtwA4IlIU2zLjh5WhmGSOs1kFSjUCbfwLa0x9FEZuwL4i/I0X60cs5hQsq4ECASW1hTOK47BK81eLLZcVyrFL/Yvs8pfhEgCbk4I6wBKe8GvF49A6/rt3DP6cptyX5UNY4P1RYbAK3U01zevEhu/KlOrS2mdjsT3jSKVf7JWOazgQ2YXRKkwNxNcrf+2ky+Z5U9DQumiPFdF6WzYN2WleoYCdniNscX1E8S1lpK5r53zYZYUEFjnOhVyQFe2XgnRQ4Nlol/ceXHxDMqQvoCgWinoker/huvThVp7YqDkNGGu/7jpDRv4mVhXB8oShXSZAVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=juniper.net; dmarc=pass action=none header.from=juniper.net;
 dkim=pass header.d=juniper.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juniper.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdOfFG2NY0hleCsyRLT5p8c3s7XOK98kdzz3DpWV3iw=;
 b=gzmcSUIY1jRzXSFWdEc0WRtDsrxiIX3s73dNZpPbP5abgBDWc6PtvghbC92gC3spzqH/GEc9sqj71VFClaYZuOA+tZArXHf8HNHcrTXuFpnhioy4rnoxzz9HQikzXoziwjdnN28yoFWbdQocewy5JZgEypv7qFoMr8EcoN6LmuE=
Received: from BY3PR05MB8356.namprd05.prod.outlook.com (2603:10b6:a03:3c3::5)
 by BYAPR05MB6391.namprd05.prod.outlook.com (2603:10b6:a03:e1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.11; Thu, 29 Jul
 2021 09:37:16 +0000
Received: from BY3PR05MB8356.namprd05.prod.outlook.com
 ([fe80::add2:199b:b7ff:974b]) by BY3PR05MB8356.namprd05.prod.outlook.com
 ([fe80::add2:199b:b7ff:974b%7]) with mapi id 15.20.4394.009; Thu, 29 Jul 2021
 09:37:16 +0000
From: Yuvaraj Ranganathan <yranganathan@juniper.net>
To: Laurent Dumont <laurentfdumont@gmail.com>
Thread-Topic: [E1000-devel] Traffic not passing for VLAN ID >= 32 on the I350
 SR-IOV enabled NIC
Thread-Index: AQHXgqzxV++qPwNWaU27fCWwrDJgLqtZOKaAgAB374w=
Date: Thu, 29 Jul 2021 09:37:16 +0000
Message-ID: <BY3PR05MB835660017E08EE8B6BC85AFFCAEB9@BY3PR05MB8356.namprd05.prod.outlook.com>
References: <BY3PR05MB835694E97F5EA0D60B0DD2B3CAE99@BY3PR05MB8356.namprd05.prod.outlook.com>,
 <CAOAKi8yNzyj0yQNa1qNUAFuCdYUtE3fzZOW0=cSPUyd9THKg2A@mail.gmail.com>
In-Reply-To: <CAOAKi8yNzyj0yQNa1qNUAFuCdYUtE3fzZOW0=cSPUyd9THKg2A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Enabled=True;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SiteId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_SetDate=2021-07-29T09:20:26.5112239Z;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_ContentBits=0;
 MSIP_Label_0633b888-ae0d-4341-a75f-06e04137d755_Method=Standard
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=juniper.net;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d24b977-73e0-44ba-d014-08d952747421
x-ms-traffictypediagnostic: BYAPR05MB6391:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR05MB6391F5AEAF1CE228BE1A2C87CAEB9@BYAPR05MB6391.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LNbX0uL8u3oHeV7uI3J2hyd2DEgV1scLaufofvDi5x53Jbwyb/5K/R7KqAtmg6a5zPh7CcjRP/TSF+C9poBV0Wuk4148lKLuU3hVvqymx/SvdYUc3fFc51NW+vRzQFdAyOXTEZFCPqbhMdAOGm89SIteofI5mSWi+Ohg+QZaDzBpP6+nhqbfIH+HfCwVmo1GP8v0JaB1JoaelSuUU4r1/22FLD50Wlksrgx7xdK9j41kM8P3tkcjRVDZEkb4Wk9s5x/qLQX4mE93pbYFK63GD9PmhtRDgcOSpcPFa3nggzKUvI1Kpw479bn7PfpDrhFlc2V/kEyN44X+mJhVBNY9WPM+NqjY1R02Do/7pB6M9l0CI6RwMeqLwX9sqXHcF0RyY/ZKdFO6OyFvXIkFJJ6PFF7N430woQWamVRRBmkKpwd2Yww5b3whVxU08XJ23rUvd4TAJCO/+kkuAXTYqODUUXDHCfV2cmR8Du47K6v2eLI2eEwVvU9cXWifiwcCMiRrnN6dkeKzlbERrcbnmJ/9Ux1hqtPpkHOLPUSIdXC1HP36LbHdLiUif0N+MfghwpGEqyiwtbZiknziwf4KfQqEdE4BQv4j0poKXTwQBbxiKssr6jYzJ5EriXSw4FZSNJl7F/2QHpVf/R7TfThwQppwvD16E5iXaoUIejeVXOQAl1yKyAgLhbXNhrmVzrqiDcanevutN4N3QtWIPBvkMmgY9UMMcoOTyYrB3GWC3kHZSxCi5Rtggf7mccyCi0RUJLai3zJLX/FcNx2M7rWYxy745Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR05MB8356.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(376002)(396003)(366004)(39860400002)(2906002)(166002)(86362001)(71200400001)(33656002)(122000001)(38100700002)(478600001)(52536014)(26005)(38070700005)(6506007)(5660300002)(8676002)(55016002)(8936002)(7696005)(4326008)(53546011)(66446008)(66556008)(9686003)(316002)(64756008)(186003)(6916009)(91956017)(966005)(9326002)(66476007)(66946007)(54906003)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?inCdk6SaUoslzfRtepmTu0EhlSJKTBtCt/xFlTE/2qXD7GFTuYNv4Vkj?=
 =?Windows-1252?Q?hYxUhoF16Ewt9pvKra5cKeb978IPSlFo8fDWUpcHGRy84jzN6EmBAx5s?=
 =?Windows-1252?Q?u5Yr26P4m9UJ5uHb4ZnRrjMyWClzi59MviKlSWvs0USXyNzwmd+WmuZ7?=
 =?Windows-1252?Q?WpzbTTNtKNJOmJhGba31vuZ15BXqriLJX6fbP79bjnP07uOzl2mZgVE6?=
 =?Windows-1252?Q?vTu31KC4D+8buLYdmFTqtMNZ986EvWNpPRvn1SryBmmdSQ6Tj2G7v1CV?=
 =?Windows-1252?Q?Gtx4UR1FM0Yj/XwQ1k3jDGgeAfUkP7PZwHOyr47MHjH+UN5sp+F9Hllv?=
 =?Windows-1252?Q?WfZuoyQefJZR4tbbB0ZyDkNdnEB3OJdh4NmY1zk5eRZ3z4yVCxh1V3+J?=
 =?Windows-1252?Q?s/K60RaTBeg90P9xgHlJ3X3SijlfzpCf5fanPMxSO4US6XUxJ+RfOQYj?=
 =?Windows-1252?Q?NuTRLnKnj9RtqmUZCzGFORnndg7Y9Tr2kf9w5YLdaiqDyoIJsMOP25nO?=
 =?Windows-1252?Q?9a5E6LA8zo7+U96ZLFjw6z4OZ2h0Qexn0HPIuX0Kr3w8ikqBETdhMevz?=
 =?Windows-1252?Q?JGZP6slvDz0B1d1ewqiPhFNnKxTvtD8W6Dnvnyh8F5iAv67yNwWlIIc1?=
 =?Windows-1252?Q?wZbfwD5WWrkI3DdaaakAQbqNV4cEPbAnyxud5so8fOM7MIFfey3xDEOk?=
 =?Windows-1252?Q?Z80g2hqID2jAhtzyVY+jzMmx/YA8aBz7R5qFqKLHUHxcBDtuHc4iHK8W?=
 =?Windows-1252?Q?OjQhcLhH1+ElosK1YKaxOH+evAVYPYtUZSENzdE2YAocgEWN2vTxmwa5?=
 =?Windows-1252?Q?73l8Wgp3Ly8q4s8kvPXJHjLme8FjjsrD3TLm8R7+E1Ch6z15hJnI0f47?=
 =?Windows-1252?Q?75mBWfCpvMEPRrbSE3Rre1bfMNxDvuW+OMWe78VYQs+OpKNsHfDj2CgX?=
 =?Windows-1252?Q?QfTejqHwUbu7nTV9vxMfLOL4OhSeSIXDc/5Ap9/LCw7/GkCoPf2Oqtl0?=
 =?Windows-1252?Q?bTM89ICFBvRPJqoFVp+rRDqOKJRQO8vCswID56sMvxCNo/BgTwZSlgsd?=
 =?Windows-1252?Q?Vop5onzwFXV0CQoEOW8Ah0hja5rFXMOZAhEvbzsNQGEwdviRjlCPIZur?=
 =?Windows-1252?Q?0iwZzmei4WMb3SEmkoHASsqBMxO3K0irf6dqXMiSUBxEudSTqo5dDpi/?=
 =?Windows-1252?Q?RA2qPP4eXMHbFq1u6sTl454amqGsQuJH5mHuegIQy6qT4K783sezBQ8Y?=
 =?Windows-1252?Q?UTydpK0sQUxttWjH2EdtcE1lXml5p3yYQDTJL285puVuAKmyerU6V5WW?=
 =?Windows-1252?Q?2ybp4YxSVflJ853k9MD5PK7TTAqakvz4IgvAaVz6zZyJQeHvwkJh9ASk?=
 =?Windows-1252?Q?C9vuPxY31OBlM8tGiff7QrbEcMFE98rIIO9FqyeHQr0qmiLBiUSjZQgH?=
 =?Windows-1252?Q?GjTnOCOXbFh78vMeJhMs/g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR05MB8356.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d24b977-73e0-44ba-d014-08d952747421
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 09:37:16.6269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K51rZi0Gv+MT1wh3cid64RNnA2Th6nE38aPoSgiXwrl4yvHyFwfT/wa7OmB1rc7dlrV69yB7BpGC3fhjY7mA0uIK50XmDFKt67losvuiTqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB6391
X-Proofpoint-GUID: jyFF_ul98pIKn-hm6a2TZnOWoOzDKgnR
X-Proofpoint-ORIG-GUID: jyFF_ul98pIKn-hm6a2TZnOWoOzDKgnR
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-29_09:2021-07-27,
 2021-07-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam
 score=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 spamscore=0 phishscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107290061
X-Mailman-Approved-At: Thu, 29 Jul 2021 14:02:02 +0000
Subject: Re: [Intel-wired-lan] [E1000-devel] Traffic not passing for VLAN ID
 >= 32 on the I350 SR-IOV enabled NIC
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
Cc: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 Pushp Saurav <psaurav@juniper.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============1713322157325313973=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1713322157325313973==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY3PR05MB835660017E08EE8B6BC85AFFCAEB9BY3PR05MB8356namp_"

--_000_BY3PR05MB835660017E08EE8B6BC85AFFCAEB9BY3PR05MB8356namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

Thanks for your help.

Below is the information of SR-IOV interface, where VF 2 is directly mapped=
 to VM interface.

root@local-node:~# ip link show heth-0-1
5: heth-0-1: <BROADCAST,MULTICAST,ALLMULTI,PROMISC,UP,LOWER_UP> mtu 9192 qd=
isc mq state UP mode DEFAULT group default qlen 1000
    link/ether 58:00:bb:aa:ee:49 brd ff:ff:ff:ff:ff:ff
    vf 0 MAC aa:81:c7:6f:b4:0a, spoof checking on, link-state auto, trust o=
n
    vf 1 MAC 16:26:97:40:0f:86, spoof checking on, link-state auto, trust o=
n
    vf 2 MAC 58:00:bb:aa:ee:60, spoof checking on, link-state auto, trust o=
n
    vf 3 MAC 22:28:fa:f4:68:1a, spoof checking on, link-state auto, trust o=
n
root@local-node:~#

On configuring the VLAN >=3D32 on the VM interface and tried sending outgoi=
ng traffic, there is no packet captured in tcpdump at SR-IOV(heth-0-1) inte=
rface. In case of VLAN <=3D 31, the outgoing packet captured in tcpdump at =
heth-0-1 interface.

You help is always appreciated!

Thanks,
Yuvaraj.

From: Laurent Dumont <laurentfdumont@gmail.com>
Date: Thursday, 29 July 2021 at 7:41 AM
To: Yuvaraj Ranganathan <yranganathan@juniper.net>
Cc: e1000-devel@lists.sourceforge.net <e1000-devel@lists.sourceforge.net>, =
intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>, Pushp =
Saurav <psaurav@juniper.net>
Subject: Re: [E1000-devel] Traffic not passing for VLAN ID >=3D 32 on the I=
350 SR-IOV enabled NIC
[External Email. Be cautious of content]

Can you show the output of

ip link show $SRIOV_INT_NAME_HERE

Are you seeing any traffic reaching inside the VM if you tcpdump there?

On Tue, Jul 27, 2021 at 10:07 AM Yuvaraj Ranganathan via E1000-devel <e1000=
-devel@lists.sourceforge.net<mailto:e1000-devel@lists.sourceforge.net>> wro=
te:
Hi Team,

With the SR-IOV enabled on I350 NIC which has 4 VF=92s, on configuring VLAN=
 ID from range 1 to 31 on the VM interface, network traffic is fine and no =
issues. When trying to create an interface with VLAN ID >=3D 32 on the VM, =
traffic is not passing to that interface and as per HW specs, VLAN ID=92s f=
rom 1 to 4096 are supported.

VM=92s interface is directly mapped to one of the VF on I350 NIC. I am usin=
g IGB PF driver version 5.7.2(latest).

Could somebody please help!

Thanks in advance,
Yuvaraj.


Juniper Business Use Only

_______________________________________________
E1000-devel mailing list
E1000-devel@lists.sourceforge.net<mailto:E1000-devel@lists.sourceforge.net>
https://lists.sourceforge.net/lists/listinfo/e1000-devel<https://urldefense=
.com/v3/__https:/lists.sourceforge.net/lists/listinfo/e1000-devel__;!!NEt6y=
MaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYNsHaHk47t9o3oazDYLdf8qTZlJS5Q$=
>
To learn more about Intel Ethernet, visit https://forums.intel.com/s/topic/=
0TO0P00000018NbWAI/intel-ethernet<https://urldefense.com/v3/__https:/forums=
.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet__;!!NEt6yMaO-gk!XuSTry=
-yCsDfr50s_cea2F8i2aZsn1EgmahFyYNsHaHk47t9o3oazDYLdf8qBIRweU8$>


Juniper Business Use Only

--_000_BY3PR05MB835660017E08EE8B6BC85AFFCAEB9BY3PR05MB8356namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Lato;
	panose-1:2 15 5 2 2 2 4 3 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Hi Lauren=
t,<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Thanks fo=
r your help.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><br>
Below is the information of SR-IOV interface, where VF 2 is directly mapped=
 to VM interface.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">root@loca=
l-node:~# ip link show heth-0-1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">5: heth-0=
-1: &lt;BROADCAST,MULTICAST,ALLMULTI,PROMISC,UP,LOWER_UP&gt; mtu 9192 qdisc=
 mq state UP mode DEFAULT group default qlen 1000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">&nbsp;&nb=
sp;&nbsp; link/ether 58:00:bb:aa:ee:49 brd ff:ff:ff:ff:ff:ff<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">&nbsp;&nb=
sp;&nbsp; vf 0 MAC aa:81:c7:6f:b4:0a, spoof checking on, link-state auto, t=
rust on<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">&nbsp;&nb=
sp;&nbsp; vf 1 MAC 16:26:97:40:0f:86, spoof checking on, link-state auto, t=
rust on<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">&nbsp;&nb=
sp;&nbsp; vf 2 MAC 58:00:bb:aa:ee:60, spoof checking on, link-state auto, t=
rust on<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">&nbsp;&nb=
sp;&nbsp; vf 3 MAC 22:28:fa:f4:68:1a, spoof checking on, link-state auto, t=
rust on<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">root@loca=
l-node:~#<br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">On config=
uring the VLAN &gt;=3D32 on the VM interface and tried sending outgoing tra=
ffic, there is no packet captured in tcpdump at SR-IOV(heth-0-1) interface.=
 In case of VLAN &lt;=3D 31, the outgoing packet
 captured in tcpdump at heth-0-1 interface.<br>
<br>
You help is always appreciated!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><br>
Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Yuvaraj.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Laurent Dumont &lt;=
laurentfdumont@gmail.com&gt;<br>
<b>Date: </b>Thursday, 29 July 2021 at 7:41 AM<br>
<b>To: </b>Yuvaraj Ranganathan &lt;yranganathan@juniper.net&gt;<br>
<b>Cc: </b>e1000-devel@lists.sourceforge.net &lt;e1000-devel@lists.sourcefo=
rge.net&gt;, intel-wired-lan@lists.osuosl.org &lt;intel-wired-lan@lists.osu=
osl.org&gt;, Pushp Saurav &lt;psaurav@juniper.net&gt;<br>
<b>Subject: </b>Re: [E1000-devel] Traffic not passing for VLAN ID &gt;=3D 3=
2 on the I350 SR-IOV enabled NIC<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:12.0pt;background:#FFEB9C"><b><=
span style=3D"font-size:10.5pt;font-family:&quot;Lato&quot;,sans-serif;colo=
r:black">[External Email. Be cautious of content]<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">Can you show the output of <o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">ip link show $SRIOV_INT_NAME_HERE<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Are you seeing any traffic reaching inside the VM if=
 you tcpdump there?<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jul 27, 2021 at 10:07 AM Yuvaraj Ranganathan=
 via E1000-devel &lt;<a href=3D"mailto:e1000-devel@lists.sourceforge.net">e=
1000-devel@lists.sourceforge.net</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">Hi Team,<br>
<br>
With the SR-IOV enabled on I350 NIC which has 4 VF=92s, on configuring VLAN=
 ID from range 1 to 31 on the VM interface, network traffic is fine and no =
issues. When trying to create an interface with VLAN ID &gt;=3D 32 on the V=
M, traffic is not passing to that interface
 and as per HW specs, VLAN ID=92s from 1 to 4096 are supported.<br>
<br>
VM=92s interface is directly mapped to one of the VF on I350 NIC. I am usin=
g IGB PF driver version 5.7.2(latest).<br>
<br>
Could somebody please help!<br>
<br>
Thanks in advance,<br>
Yuvaraj.<br>
<br>
<br>
Juniper Business Use Only<br>
<br>
_______________________________________________<br>
E1000-devel mailing list<br>
<a href=3D"mailto:E1000-devel@lists.sourceforge.net" target=3D"_blank">E100=
0-devel@lists.sourceforge.net</a><br>
<a href=3D"https://urldefense.com/v3/__https:/lists.sourceforge.net/lists/l=
istinfo/e1000-devel__;!!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYN=
sHaHk47t9o3oazDYLdf8qTZlJS5Q$" target=3D"_blank">https://lists.sourceforge.=
net/lists/listinfo/e1000-devel</a><br>
To learn more about Intel Ethernet, visit <a href=3D"https://urldefense.com=
/v3/__https:/forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet__;!=
!NEt6yMaO-gk!XuSTry-yCsDfr50s_cea2F8i2aZsn1EgmahFyYNsHaHk47t9o3oazDYLdf8qBI=
RweU8$" target=3D"_blank">
https://forums.intel.com/s/topic/0TO0P00000018NbWAI/intel-ethernet</a><o:p>=
</o:p></p>
</blockquote>
</div>
</div>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:7pt;color:#000000;margin:15pt;" a=
lign=3D"Center">
Juniper Business Use Only<br>
</p>
</body>
</html>

--_000_BY3PR05MB835660017E08EE8B6BC85AFFCAEB9BY3PR05MB8356namp_--

--===============1713322157325313973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1713322157325313973==--
