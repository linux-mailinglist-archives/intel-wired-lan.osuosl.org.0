Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720203090F4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 01:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C856E872BA;
	Sat, 30 Jan 2021 00:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qniUOOKuhJrq; Sat, 30 Jan 2021 00:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1678D872BD;
	Sat, 30 Jan 2021 00:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C06721C116E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA89C872E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfnfuiAXK+tZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 00:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2081.outbound.protection.outlook.com [40.107.22.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E225872E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:25:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0O+nIFAQozLIDiXzvi090NzBOLUuoW+5rBHE0vGCaTJXf41/G4+KUeu5V+K+WotyBh6+TnS4yn5JeEkrQm27tsOWOo7zEE5PxGNuMXTbJymfeFB3zRY4YO9daTSMgsrxqs5QoaRarV/d2yepT1k8GaX1v66JVjtt4ftRzkIc6POXuR3WSDFQKIE4veYAU2Cgh/K8IsDyJxsfNCiCKiqG8We+1F1W9W18F8qXJbfKvtCbZWBIhidJs8eYDwB+zieuyem3VeGVAua5CvHDiwBq6aanFAx25r0j0Yj3F9/gBkew0pPswYDSRxGUHbxTMIPkGfxklIeQBLHLVZUh0iPIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D1X+oEKdZ8qaDlhQlYVyidxFlN6EtPcixJ+56z4dDrk=;
 b=FtmX0CcylSF5D/PA/AIcu34FldflCbPbQpNrIWRAed8xEpokLBbr0JYjsNUtDke7oDzj7bpYj/trmrsGDCMZ+2fLB60ZfDrw7ZpoaI7GRVDL4NRLALNzqkyKbZ4qmFCpU4oZvdNYCD/N9SShc0+roC9Ndwap53ofLKP3JH4YQ5hoteVS3XuJK4nsuLb46wzGSlH+FzeeFz7zESwf7OlvkI7q4F1DzBh2n45UBdDoaXCZF2BNejJfelESCGogGt7T6hSTXP/Vcf/N1j/Ek6/8Y2MhxkMpFmlzCDDJtechX4uZ4fWPR4gkvw/ANmt2k+QOr9FSBawTcSUKSv23ojnVSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D1X+oEKdZ8qaDlhQlYVyidxFlN6EtPcixJ+56z4dDrk=;
 b=EE+ncK+Wv/Ezk8TWbgp5kbL8rcyLdoqC0/lHSEL6sKyMBdIQsAVLRmXjXXtS/KSpHeKDLWMZPpZLT8cngN8XgwhLzqmPfZehP3DOZuwgcGTUFa1ybe1HDZ9j8/IGY7xEOOafz0dbTl28u4/tWffoub8gbEiGgYl1kehnAItBiGY=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB7119.eurprd04.prod.outlook.com (2603:10a6:800:12e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Sat, 30 Jan
 2021 00:25:30 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7%6]) with mapi id 15.20.3805.017; Sat, 30 Jan 2021
 00:25:29 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v3 2/8] taprio: Add support for frame preemption
 offload
Thread-Index: AQHW8RBJQDX+89PKk0KRFCgmtnZ2gKo5DOAAgAYYJwCAACNxgIAABhqAgAAMIIA=
Date: Sat, 30 Jan 2021 00:25:29 +0000
Message-ID: <20210130002529.maribb4n7wc2trfi@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
 <20210126000924.jjkjruzmh5lgrkry@skbuf>
 <87wnvvsayz.fsf@vcostago-mobl2.amr.corp.intel.com>
 <20210129232015.atl4336zqy4ev3bi@skbuf>
 <87zh0rqpiq.fsf@vcostago-mobl2.amr.corp.intel.com>
In-Reply-To: <87zh0rqpiq.fsf@vcostago-mobl2.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [5.12.227.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f8bb46ca-8411-4158-99d4-08d8c4b58c91
x-ms-traffictypediagnostic: VI1PR04MB7119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB7119191577B8D24EF37BB76DE0B89@VI1PR04MB7119.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 428WYe9d3C4vE2rLsFfySeLRpAHAI0zjTWqVzVUpfcRKBT32Ojj789O1v26xT6L3AeinwaBrhoHZoqXv1o+xlfBjVcIJOpYbmHePUOg4Oed5GO+MxNjkKZ2i8RCj/Iu7AxwSSVEc575LKOUUJyTdosYU4fIg0lby4oLgVa9iHixg85sPftaUzaW0LP1VkUsm+dUo5jurGn0cn+Qxyq/qrRaj6Hf42JW0xrfZT4KRPBl83bosoU3nMAwA2HcRwqW3qtpC9qDzAtv4W0fJYy64e8x5ueqUJeroFtY0CpF3SmZ5VCA92lvftYnXJ80bZVhvdlSA5O6jQBvMg53ElV07gf3OFXK66CHv/+vOklKsmrLG3uhAxyHlLyLeDSzBfwkPU7NklFpg//TnrssjGiaaJLZvl/OABZr7sigljj+tNcVeIuJwLKuLwdXB3C9Jl1HRZbLXfdzX5rEQ2GjfumhyUAphrpdPd3F9XvLjzd/71y97mgzXktpLu+2vOYLRWXOLUbm1+MpkiZd5IlUrGbn4u/tWZlYUZTz7uhRCX3Ty8XKQENMiXTzDzmhDRTxUqaqNdWJ0JKDzNP1Zt1LJU/22BICPXwYtyXuZ1vJlqPWc8kw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(7416002)(71200400001)(4326008)(6916009)(86362001)(66556008)(64756008)(66946007)(6486002)(66476007)(6512007)(54906003)(8936002)(1076003)(6506007)(9686003)(316002)(76116006)(44832011)(186003)(8676002)(2906002)(966005)(5660300002)(26005)(478600001)(83380400001)(33716001)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?fpyLtCfdE3/pssG6BOcZwyQUnO+T9eQYcrEp/dScGv2eK6i+kpNEito73sMm?=
 =?us-ascii?Q?R7WjaqrxdL/PDNqUXKq4NKysq3irlC7t0LoyGfrp5upNqXIIRQS+ZoDSBI6p?=
 =?us-ascii?Q?OYCS0Wo8kIi70GaCWjjf7djaGPpMndJ9MVmZf/Z6Dr1RVBuE6mh0fJJU4ibR?=
 =?us-ascii?Q?dL9HK4fzw5/xA4YWLy0eiYNnEmOxoJTC+FCcaxjnUVNna4bNXH/SL13LRJgG?=
 =?us-ascii?Q?mi8+KWfp395ZbV6jPbhDzWI/4HikmVfUb3XOoDhPF1/lfU4OwwO5oqxqfCkd?=
 =?us-ascii?Q?DnH+TDP/+RserNAUxYS/sPSqVs2g3Iau+rya5Y1UK1kq8Dch4Kx+5CKuLr2a?=
 =?us-ascii?Q?pqurGq0r4X951wpv/3Ke0ty4iYpFkyH8Do4Q/AgdUBpjGGdf62Ie0PQiAkPa?=
 =?us-ascii?Q?Wk0S0NNBeGU3rCvkzcmmJtMax05LLoYVefX9c19wBgcGZbOMmSg29NdG3d2b?=
 =?us-ascii?Q?i8UgNJs9DjUJ4z20cUkzbySO887SJ/CUctrnuI5hXGXvK/9U6tCgBcZ708zd?=
 =?us-ascii?Q?Rz4/B/XWPyxka+KJmeZgZnB+ecP7DFvT0v9aH6cKvQC/DiSlCfYqseR3DOhH?=
 =?us-ascii?Q?CayFh+cMj06gofiN5EULXyjwgMUBFZjW+/qkZz1yjJW7mRLzvW9bnl+jukpR?=
 =?us-ascii?Q?bvx9XHgRjACZR1tVpsIz8jt3/2A8EEyOx1ukU5mzS4Qf6uu1KyD+xVSQxlDa?=
 =?us-ascii?Q?yFIK4XWhO8lYrkfQTEOU/Oj50oZEBoVYaRM6iW+535FklkM4Dtk8nQ4EGbOL?=
 =?us-ascii?Q?BXXD+TLAFA5JQ4TmWFkWSBmoTfYOVQ7J2MpPkexcAJuS17Dai1aKkFTdBtpR?=
 =?us-ascii?Q?HU93x9HpC7dGQXWPGJxnN7cl6jqUQy7/XRlhc0s3AwZzLx/Xj6GcQYbqaWG+?=
 =?us-ascii?Q?OetA/R+PX1racQoSkypZaDQUPhZ2haf89dxiibL9o5qmaKaSORg61C1hJyf9?=
 =?us-ascii?Q?6O4UkHxflyFkaWUUfbHRM9hyNcYPF7v0fe+gK1fllYzwqvqXeLLa8YFOTwvZ?=
 =?us-ascii?Q?f/m37fF1HG11CKpllflwKaPwjI2J6u++GDGM3cfBkzTWWUMoLtuiLTlW/2Oq?=
 =?us-ascii?Q?at5I6dEj?=
Content-ID: <A5754C7885987C4CAFD220448542DC66@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8bb46ca-8411-4158-99d4-08d8c4b58c91
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2021 00:25:29.8632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LX7vf/W3pHABD5B+FH0aAEKjhHOM1xwiKAs5m8C/zO355AaKj1Yu512ylHG8qaTOj5CyMG7RMHkgOApN6qISsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7119
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/8] taprio: Add support
 for frame preemption offload
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

On Fri, Jan 29, 2021 at 03:42:05PM -0800, Vinicius Costa Gomes wrote:
> >> But as I said above, perhaps this should be handled in a per-driver
> >> way. I will remove this from taprio.
> >>
> >> I think removing this check/limitation from taprio should solve the
> >> second part of your question, right?
> >
> > Nope. Can you point me to either 802.1Q or 802.3 saying that at least
> > one priority should go to the express MAC?
> 
> After re-reading Anex Q, I know it's informative, and
> thinking/remembering things a bit better, it seems that the standard
> only defines preemption of express queues/priorities over preemptible
> traffic. The standard doesn't talk about preemptible pririoties
> preempting other preemptible priorities.
> 
> So, if there's no express queue, no preemption is going to happen, so it
> shouldn't be enabled, to avoid like an invalid/useless state.
> 
> So I am going to take back my previous email: this seems like it's
> better to be kept in a centralized place.

Sorry, what?
If you go to the Figure 99-5 Transmit Processing state diagram in IEEE
802.3 (which is what a hardware designer will actually implement), the
pMAC's transition from the PREEMPTABLE_TX state to TX_MCRC is gated by
the "preempt" variable.

Whose definition is:

Boolean that is TRUE when a preemptable packet is to be preempted.
The value of preempt is:
pAllow * (eTx + hold) * preemptableFragSize * MIN_REMAIN

(where * is logical AND, + is logical OR - editor's note).

The important part is (eTx + hold). It means that either the eMAC wants
to transmit, or a HOLD request has been emitted. Otherwise said, HOLD
requests should always trigger a preemption regardless of whether the
eMAC has packets to send or not.

I believe that Michael Teener's peristaltic shaper which is described in
Annex T "Cyclic queuing and forwarding" (right below what you linked me)
makes use of frame preemption triggered by HOLD requests, in order to
reduce the interference time as much as possible.
That's the use case I was actually thinking of when I asked. See slide
11 here:
https://www.ieee802.org/1/files/public/docs2012/new-avb-mjt-back-to-the-future-1112-v01.pdf
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
