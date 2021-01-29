Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F27D3090AD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 00:37:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28FFF872A4;
	Fri, 29 Jan 2021 23:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4vkVzTqLL68; Fri, 29 Jan 2021 23:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F538727D;
	Fri, 29 Jan 2021 23:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79E0E1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 757DE8715E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfULYdRAhpeX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 23:37:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr40062.outbound.protection.outlook.com [40.107.4.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 124518714D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 23:37:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8sCgAPHDT5U8MBiJD7VPkFEeMuIFaTuUbKIqoCozzrwWPCnbzw3bbEFFeI9eL7giqMoOPRWipLBkQ2t9+7L1OpE5e1IVioZlaew4S/F1YDAWbdFcAoQg4AiyH79a6VO5qq9ia2mHSg5V5UgnAtbbnwwLEBZ6K0anW7xYcVtf5j4yOTRYL+2NIZcAwWkZ0gBRRHhOYlVSjqAVciia9urkuHvP+NUG5elO4ZmZIaPUdIeoKfAAGpaNC83g4lt+EfwScsuGUT4Y4iIhF/ttqnf+GqTp25feVNb2VF9h4mEFawaVVUDD3YCOavDNtzs77l0m1VpMQJ15NJLoo/YcoCljw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2EwjJaV4U72Ar8kXFbHriI2baGJjMpPcef/cQNR4Dig=;
 b=IjzV93wQGF9FNJyV4Zb4qZaE0TnUCetR+b2u+OHk/9yZGB4ftUU0ryZyH8ZOly51Apt6Pk+o05MHWSoZXG9xlOHGUYnRzY4621+2jasIoLosW9hiAlrFKruRcwhaXdW9EwDPTMifVeH5OU3XjR49TlefCpmZ/JHp6CPbpzIsqjaAqPzuITu1wKG0DwBzmXbUYBqUhVpimjKhjljoXjT9YQE/CVoAIqFFvi+axbdWKSf5gSReHaAA8eqi1klwmLjflL2WZnIEep9sMYC4JEIq2HUuJJuw0j+CWYoTKO/KSC8dIhAGI6XKT+sRUa6F9aQqxcBQ0g8EUJLG3pjHd8+Ewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2EwjJaV4U72Ar8kXFbHriI2baGJjMpPcef/cQNR4Dig=;
 b=WsUisPiQdJfw8azG/O2qxmNLylrAs6sVyhtWwq+WCKoHjHzTiYHPWe20ar+TjJ0tqquedqJ8ABta3dgY7KmkggET/mxz5sjW7Nk7dRYy9j2d0J7RzQ199hfhObVtPKJCce2ynIJoFjp0zWQJVaK+sdWxh+DPOrtfiM9aGlgmwGQ=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (20.177.49.83) by
 VI1PR04MB6942.eurprd04.prod.outlook.com (52.133.246.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.16; Fri, 29 Jan 2021 23:37:30 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7%6]) with mapi id 15.20.3805.017; Fri, 29 Jan 2021
 23:37:30 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v3 0/8] ethtool: Add support for frame preemption
Thread-Index: AQHW8RBKee9WDlmdW0OG2coJ0zCCY6o/TUmA
Date: Fri, 29 Jan 2021 23:37:29 +0000
Message-ID: <20210129233729.bjckcxcx45hueb2z@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
In-Reply-To: <20210122224453.4161729-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [5.12.227.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f015e922-86f8-44d3-6754-08d8c4aed80e
x-ms-traffictypediagnostic: VI1PR04MB6942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6942AFE16B1B6AA4E08B490AE0B99@VI1PR04MB6942.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PQgvNhu3qX80rxfIJAt4G0pKnQ7UUu4H1XNYZYWh2HZ41u4lHyJZppUj0q+z6Gqa5+xbthGdWPKJWNc6qQdhPE4QFcfsnTR7rp0Mr/9ra5tt/1Hz+mQaMfh6yxIl6nu8/dAv5WjJ7u9vr6y8yfsNKA6R+AQQXftT5JkMl6ILyFoYEIgPRQHxCDY7Nr5qza2+FbekFQ79+YnsfL1jCEd3YZCWVsD4RH2CFSPS3cAzaqwTDZ9cm/K9r1gXcSpKk85xvFqKdeQViODofGgUQONVtbG0CyV0UbgAuXMxw2IxATE5M15aao+8V8JrP0/BjMEgVWE77mHK45N1Mqf9n0twXWJ+x1NYH8dbAlnE8SliD9z4oAPHCsPCfltREaqq5FNeajO3zvzRc650wXH+mH+tf0qejoJAGazJJ8jQVZJTaUt9KxqWAKg/94wq4Fb4hQOGR4OIg2JjBFxPGjKnX8P+NCsDGwATHoP6wu2p6mEkYgTpvy/IsvABubAD+k6sivkVtPVghx9sW9mFLoD0o6s51A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(346002)(376002)(396003)(366004)(136003)(39850400004)(316002)(83380400001)(76116006)(66446008)(7416002)(44832011)(5660300002)(26005)(186003)(66946007)(64756008)(66556008)(6506007)(1076003)(54906003)(6486002)(71200400001)(86362001)(478600001)(6916009)(9686003)(8936002)(33716001)(8676002)(2906002)(66476007)(4326008)(6512007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?VvBqrAsHGspz5+z0bnEjCVMPA+26lkMQ1czED6jlWbt1pE54Cx8Pg9nFwY6I?=
 =?us-ascii?Q?1Do625RyOFilkU/CK4bHMsgPZaHJaNcVYtjr9jFT2izEMFCUaw9IR1P+K5+r?=
 =?us-ascii?Q?p7tXowMApMPMv2q5Rb3kCkshsvJMngkhp+DBEZ5413W7rblUylRaG0orp0RF?=
 =?us-ascii?Q?pC8tBUqXHoY3NE9z+hGd/dTKtoW3nFVfSJZaVHIcOJSMh6/JVnZMltvT8Eiq?=
 =?us-ascii?Q?h7909o+wIZNSTYJq3nc1Ic0OC52YMkvjyL3DoYbPI6UgABXgejXuf6WpnKf4?=
 =?us-ascii?Q?ptQbAo+daXWyxyFW51Lsj/Mim8rJHyI0kv7sj3I9lz0Y4kRXSNh4eYU6E0eD?=
 =?us-ascii?Q?1HoSyOKu6F0ljJP1OmUG8a0+EzStSs0CxL9s5r14Ev2gQ41EWkLuCWkmhstk?=
 =?us-ascii?Q?91w+V+UpLNn7/rX5AOEZ+1YIHYrS32RCd41OkowYYbVRPzK/F3C3WUZ6GmYO?=
 =?us-ascii?Q?F5S40kSfbFw4Qha9BGblgo7iuXvAlQqu3nbVp8BINsLAf6HUyl2b3OuwrBYr?=
 =?us-ascii?Q?wpaGFxwkemVbtaI1pXKISrhEYvJP5ra2fAr/ucJACWQXX8lHtbgmu0SP3lai?=
 =?us-ascii?Q?Ivg/gR1psHh1Im2LQxVMsPVVURwLj60Q7IDVQ2IqSReKYEZCmcKc7asiY8xN?=
 =?us-ascii?Q?U7csmvk2szBxc1QJBNqVEWOXxAHzrbuqwDVHhZWHSUtCxMXTz4cCdShw40xq?=
 =?us-ascii?Q?mL4Y90eGP+u/vIF892kpdSaoXeM8mv1n6oV6QtvKvJKnT3Vw+MUhzjuIrFIS?=
 =?us-ascii?Q?VoEp/zvFGqxUEPREvA+3T8dtvJBQWhHCxb8iN0BA31ApzZFwgtdr8DjJqmHC?=
 =?us-ascii?Q?EpTQ7L6umQnd5nzlHikbnKaClt4NWaFTJdf3MLb2kARnQeZ8Zycj9iFw5n37?=
 =?us-ascii?Q?lx/DtDkx+/ADN6Zxqp6FIp3qZEdpUs0yA6RruW+0w8QCkK0a0ylj15eI8zlq?=
 =?us-ascii?Q?drE/NjvNaIQDQP8nfCFvcnVlsAgoUmeqnhbbzidzO8mPkBzljKD4T3JnNPd1?=
 =?us-ascii?Q?TtQWarvodxmieHpJR6AwIn1wcVJLmNvVQUaFTjRb4uiEH7Y3styv1x4UzDoc?=
 =?us-ascii?Q?E3wjGidN?=
Content-ID: <B1675AA6A8E7104E9183E2B18801AB74@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f015e922-86f8-44d3-6754-08d8c4aed80e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2021 23:37:30.0151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +fA3ROkKBUAymk/vyXgOZ7jMh1FhFKBY81s574jhwysa21gRKXSy6Ej1efUwQLmVrxlN8XLxSZPNNk7NL+YiJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6942
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/8] ethtool: Add support
 for frame preemption
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 22, 2021 at 02:44:45PM -0800, Vinicius Costa Gomes wrote:
> This is still an RFC because two main reasons, I want to confirm that
> this approach (per-queue settings via qdiscs, device settings via
> ethtool) looks good, even though there aren't much more options left ;-)

I don't want to bother you too much, but a consequence of putting the
per-priority settings into tc-taprio is that those will spill over into
other qdiscs too that have nothing to do with TSN, for whomever will
need frame preemption without time-aware scheduling (and there are
reasons to want that).
So could we see in the next version the frame preemption bits added to
tc-mqprio as well? I just want to make sure that we run this by the tc
maintainers and that the idea gets their informed consent before we end
up in a position where frame preemption with time-aware scheduling is
done in one way, but frame preemption without time-aware scheduling is
done another way.
You should not need to change anything related to TC_SETUP_PREEMPT in
the igc driver, so it should be just code addition.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
