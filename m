Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8322C8F00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Nov 2020 21:23:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A47F233A6;
	Mon, 30 Nov 2020 20:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYBqc3x66h3U; Mon, 30 Nov 2020 20:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 99607234BB;
	Mon, 30 Nov 2020 20:23:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4F331BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 20:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A838085F3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 20:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5NoJHX5eeKhE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Nov 2020 20:15:47 +0000 (UTC)
X-Greylist: delayed 02:00:57 by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2129.outbound.protection.outlook.com [40.107.236.129])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E11EA806D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 20:15:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIEKqwaOe04ZdRvrhHf/nEepPwHtK6lgeqxNhOR85mFJ1RzcDCic12aJrKjyCtRm9pEdCmHMcFJScl1xxLXBmDVAkyKMA1C4PldqiAyDyKuZMcWAqoTPSNBnVxzHfgTwEbUsRs64Jp7kJXdZa4gaPnXC45peUyLxnzckrQxRW4Ex/vIswWDbCB/r1xm3y6Ng1WWhdoLX1gIp7+kZu5JJmxHb9ARalLqpXHwTg2R5b2vhnaNf7F4Qb2bmWmY1M0ty0aX33/fGhS+LXWfCpzNV9ntKO3SpAic4ibKuIOJLjTera89zJsnr7DnPBv60VWQPLUZmGspFT1FMIZebkf8iJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OuDH7iAg9cI/pZHlajtr33aBsK3JiOWipDKlskBLPbc=;
 b=SDe1a0BWZKz2IaeKSnwhuZBT2hmzYGPg1FZkq4rFkQM7UgUnX7mecOYL0ygKZOBaRWMT1/4qFceaH1fbQvresT8YLcJlbyip+uADx9adWq5er9HMUPjG5ZAay7iOSVHR41jd5WH8/I+//6M/vyNh99HrgZab19GQ36cgfWXnIDiM0pzxn+45vcMt/UJHdBHHmMvM+Rj1r8jPYZ9dPfqPT0wpeGTZwUh73B5pvqxl/oFhUO1DBWq4GgndVobzJQKlWaN4B3wFMPUWjtS7NvNEu6b6ei6OyhHrrYSeIQVFL1NN10gEsqzcFOEYIv8kerajCZUY1K/TGlaIvKhXV0gaFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=purdue.edu; dmarc=pass action=none header.from=purdue.edu;
 dkim=pass header.d=purdue.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector2-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OuDH7iAg9cI/pZHlajtr33aBsK3JiOWipDKlskBLPbc=;
 b=AZkXO5vNdOdZp6sOQjEFV9EtQ0S5YtvgEFOWMfef+4uqhAo3OYvEb9wMMJKMNlhP73PCYsAY3Pbi/9YDPsqUAntcIhMgIcs2oObEoQ5TX9phMcT7rPjORqwkrA9EUKnEMYHH6wRBZhtt8CIqDYTvN5pTnBPc5fiWvomvhiJ1PbQ=
Received: from CH2PR22MB2056.namprd22.prod.outlook.com (2603:10b6:610:5d::11)
 by CH2PR22MB1877.namprd22.prod.outlook.com (2603:10b6:610:8b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.21; Mon, 30 Nov
 2020 17:43:09 +0000
Received: from CH2PR22MB2056.namprd22.prod.outlook.com
 ([fe80::1922:c660:f2f4:50fa]) by CH2PR22MB2056.namprd22.prod.outlook.com
 ([fe80::1922:c660:f2f4:50fa%7]) with mapi id 15.20.3611.031; Mon, 30 Nov 2020
 17:43:09 +0000
From: "Gong, Sishuai" <sishuai@purdue.edu>
To: "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>
Thread-Topic: Race: data race between packet_getname() and e1000_set_mac()
Thread-Index: AQHWx0BEvsIxElIQWU6y/scWO2sN3w==
Date: Mon, 30 Nov 2020 17:43:09 +0000
Message-ID: <397ACEA3-ABA1-4F59-A3D3-BE54F273B247@purdue.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=purdue.edu;
x-originating-ip: [66.253.158.157]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8989ab6-50c4-4782-e337-08d89557670b
x-ms-traffictypediagnostic: CH2PR22MB1877:
x-microsoft-antispam-prvs: <CH2PR22MB1877C57E31595C05A239BFD4DFF50@CH2PR22MB1877.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jY8FprJGfSjW6n0kDVkmQdWIHZG3zTT1CD67xgvjZ+/VQhbC2qTmSe0+Wj1+7zl3ePX4HGq+ycCAj2+PbAtjkS/H4kVk8un1I6w0+36cmkZ6vtm9URHdBG7jZdjhJ9NJhlDAptvWwsP/CskY3QT1YGcoa7UVG1C/bXSCqX7nm1xoHcV+T/tGwh8yIsAfv8vKuOdcTCF5YSlSUSFSgTd/O4Hu4sRx4KZ9T9EpJRwUSlzDe2+DM/RyxHfn7epEjN0Vm72I/RI19kzNgW1iXzPHzezo/68gnsd7KJb1cxkAiq31P0NsZXHwH5lGnRClgll5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR22MB2056.namprd22.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(136003)(39860400002)(396003)(66556008)(64756008)(71200400001)(2616005)(86362001)(5660300002)(66946007)(66476007)(66446008)(2906002)(478600001)(316002)(786003)(76116006)(36756003)(8936002)(6512007)(75432002)(8676002)(186003)(6506007)(6916009)(83380400001)(6486002)(26005)(4326008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?qyvmJBjw/9EHq4S1efOQaUxiRf7l9Wl09CdRT1uZ+PGYUPffbJbQimFglhet?=
 =?us-ascii?Q?VTG+R3BBTnBgqQ11jKQTkPHDxPeyt+760sB8iHaCyQZUW8iWJnKbIC9cEh6Q?=
 =?us-ascii?Q?SC+Ih1URWl6zIkg3VAv8fNACbgl/KuDGNrwif4+ubJ3l75slct/VoAMv+IeC?=
 =?us-ascii?Q?rx7QKVRoN0Ive1lJUKoMYUUuhx8d76JY6MQM3Q7dq6+4K33RahE8/gQEVyPd?=
 =?us-ascii?Q?XSMWQvhsCST0uAbad+W/eheaVSgQTbskIKp2HdJkC3INB92HnKmw3m0FeMJs?=
 =?us-ascii?Q?NgAJ9Uahnj5San47Z4ULEJ8+Cec1pbwPMul5V8cO66m2LkkaM6tTO9VpTT6b?=
 =?us-ascii?Q?fIa/xSz3P9udWMVsMkgMXQnWbJjBfrUmgqYTVxdgkdfJoNLhEUGF6t9SH3dP?=
 =?us-ascii?Q?HfvD+BlNkZqPq5Pl5IOZyR2DOrlhyWnszTKe6Hyn1t3saANI1Rw/sLosCGAU?=
 =?us-ascii?Q?TcfH+PogrL4ooGrXmbBewm9YtjtqB76NlnBGJeOuy6kR/XByf0GqYnJVme8Y?=
 =?us-ascii?Q?z67SXUHsyNqkMxYwCQSLIdvtXiWGYMf8TgkSBZ4ElkOxZKXaR0uAGQIIwyfR?=
 =?us-ascii?Q?l9z5trTuC4OGi0nWKTU+wdb1NG0ZhQdsGnk+0FE9GftP9eNEPGpLK5/ddO7t?=
 =?us-ascii?Q?aR1Miyo/xYhRG1sKxGPWvNTSvUvQqupbuNnjNIimdyNY1fPhfSsfPELSNmsl?=
 =?us-ascii?Q?/LMZ1MQ8VelfUu2vgKkuVZokkLOUaruND2JNcjMgeg9omK/vN6wYkPNpM1xR?=
 =?us-ascii?Q?2XekTRjxYIBQu4LYbbwKqn80PBWWjyPy709pXT3MZM4+pPB/0idh+EufWcup?=
 =?us-ascii?Q?oINlW7MWCq5C1vAyObuVlUMEJ7nsaBvGk+k8dmpfGfMU+zsATb9lpNwfPGo5?=
 =?us-ascii?Q?WzyKLf2iiK7ZS8rk2eF4YYLh8jr0k5mEcSiPYvV7u7zEYF8foGrgW+6iP/2G?=
 =?us-ascii?Q?9Zk3h6Lw3/+kj0PIm3j2qh6Y7g9245uvDJcV0PU6l8S1I1CSFOotBKcvgUGr?=
 =?us-ascii?Q?SpWF?=
x-ms-exchange-transport-forked: True
Content-ID: <1E8400EC28C6FE42A9A2F5E9C1846DE1@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR22MB2056.namprd22.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8989ab6-50c4-4782-e337-08d89557670b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 17:43:09.5505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kfewJPNKJgWWS0TwdUblbb7V3kpNWj67SPtsUk6ZpnETy3dlgq9mP+Y9KGUeA/buEPJwMOATBtWe7SLALzHuYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR22MB1877
X-Mailman-Approved-At: Mon, 30 Nov 2020 20:23:01 +0000
Subject: [Intel-wired-lan] Race: data race between packet_getname() and
 e1000_set_mac()
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

We found a data race in linux kernel 5.3.11 that we are able to reproduce in x86 under specific interleavings. Currently, we are not sure about the consequence of this race so we would like to confirm with the community if this can be a harmful bug.

 ------------------------------------------
Writer site

/tmp/tmp.B7zb7od2zE-5.3.11/extract/linux-5.3.11/drivers/net/ethernet/intel/e1000/e1000_main.c:2206
       2186   * e1000_set_mac - Change the Ethernet Address of the NIC
       2187   * @netdev: network interface device structure
       2188   * @p: pointer to an address structure
       2189   *
       2190   * Returns 0 on success, negative on failure
       2191   **/
       2192  static int e1000_set_mac(struct net_device *netdev, void *p)
       2193  {
       2194      struct e1000_adapter *adapter = netdev_priv(netdev);
       2195      struct e1000_hw *hw = &adapter->hw;
       2196      struct sockaddr *addr = p;
       2197
       2198      if (!is_valid_ether_addr(addr->sa_data))
       2199          return -EADDRNOTAVAIL;
       2200
       2201      /* 82542 2.0 needs to be in reset to write receive address registers */
       2202
       2203      if (hw->mac_type == e1000_82542_rev2_0)
       2204          e1000_enter_82542_rst(adapter);
       2205
 ==>   2206      memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
       2207      memcpy(hw->mac_addr, addr->sa_data, netdev->addr_len);
       2208
       2209      e1000_rar_set(hw, hw->mac_addr, 0);
       2210
       2211      if (hw->mac_type == e1000_82542_rev2_0)
       2212          e1000_leave_82542_rst(adapter);
       2213
       2214      return 0;
       2215  }

------------------------------------------
Reader site

 /tmp/tmp.B7zb7od2zE-5.3.11/extract/linux-5.3.11/net/packet/af_packet.c:3477
       3457  static int packet_getname(struct socket *sock, struct sockaddr *uaddr,
       3458                int peer)
       3459  {
       3460      struct net_device *dev;
       3461      struct sock *sk = sock->sk;
       3462      struct packet_sock *po = pkt_sk(sk);
       3463      DECLARE_SOCKADDR(struct sockaddr_ll *, sll, uaddr);
       3464
       3465      if (peer)
       3466          return -EOPNOTSUPP;
       3467
       3468      sll->sll_family = AF_PACKET;
       3469      sll->sll_ifindex = po->ifindex;
       3470      sll->sll_protocol = po->num;
       3471      sll->sll_pkttype = 0;
       3472      rcu_read_lock();
       3473      dev = dev_get_by_index_rcu(sock_net(sk), po->ifindex);
       3474      if (dev) {
       3475          sll->sll_hatype = dev->type;
       3476          sll->sll_halen = dev->addr_len;
 ==>   3477          memcpy(sll->sll_addr, dev->dev_addr, dev->addr_len);
       3478      } else {
       3479          sll->sll_hatype = 0;    /* Bad: we have no ARPHRD_UNSPEC */
       3480          sll->sll_halen = 0;
       3481      }
       3482      rcu_read_unlock();
       3483
       3484      return offsetof(struct sockaddr_ll, sll_addr) + sll->sll_halen;
       3485  }



------------------------------------------
Writer calling trace
- __sys_sendmsg
-- ___sys_sendmsg
--- sock_sendmsg
---- netlink_unicast
----- netlink_rcv_skb 
------ __rtnl_newlink
------- do_setlink
-------- dev_set_mac_address

------------------------------------------
Reader calling trace
- __sys_getsockname



Thanks,
Sishuai

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
