Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA76852FD7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 May 2022 17:03:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13A796103B;
	Sat, 21 May 2022 15:03:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kR0YacR3GYmx; Sat, 21 May 2022 15:03:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8364D60B96;
	Sat, 21 May 2022 15:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 002A61BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 15:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E21584198C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 15:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkRbIVubVRLU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 May 2022 15:03:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30062.outbound.protection.outlook.com [40.107.3.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 733CB424ED
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 May 2022 15:03:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adajRGC7fVuhgja9CLaBfloafmTn+8sLSObX+0MG/f7qF/K19Ok4S97BqnY0pSYQc0YdEF1s296xS+Wiptfwz4FNcTsHd3mZgOE2x2/X2dQR6BiVVPhwOkb1M6f7xFwAFFOJRreXEsxBg22GB2y3i0WvbrrCD6cZwVNF90/wq1ZMzXF3ZqUbkPVt5mOzQhEk5bGkT9vvsMTmZOGad59WcqHn9/S/DaXzaEH3bWUMPrO+N35t6oeR+IFve3+gMtzV1Uhm99Nm3rqc21q7rJh1HISnjszeSStFwXBie2GA+Nk21jW5fTFbzfFz8TWCdcGFPRsRDkXju8wxQD9WzpJEDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QrHo5Bv+KLVGORYaxOKqKLhRIoMIMlpj23UEG5+xeO8=;
 b=Ivqw6dLV8hEnAIvaGmC1Teae+1+5wqq9ZAO+TUZGokpSMZ/LlRyFrxpn2GtdSsFjIqI8lVDqnRaYACuGRz4AlFw8nA/RVjr5sqznU0t8n6KOzIMbXcfJK+jZ16R1G73f9t4/aawZ5cbU/Xtz2uoKerhVLcas5KEtc2TzQlVmeNsfQAjTWj8eRaK7L7ptt9fVfC7Q8l1QOuOdH/3DBhYip9hx8+nJgpGyWjs3nKCEbAJYf2Lx/d7oL7qRAN9Dsmn21kqtjRoSgwPaPgjkZpjg5/98WGfdS+TNprQZv+2bMQSs/8BmAnwJAGMMQg7VwNJihZ8m5i1+dKk7rb4c7mOziQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QrHo5Bv+KLVGORYaxOKqKLhRIoMIMlpj23UEG5+xeO8=;
 b=Aw/4J/glL58DfkxeVpWHHAeJK3FZX3QqPl3LfgBE/IzmXNS385qu+VxA148wC3NAQAhHyCwpRfeF6OdWO0owx0zhSzOPFIpgPVv5QFfJIf9a1lgX6b8ZtT7oBz5HAcc3cSVzTJaC2bXYnUQW88ljue5WLipksWAkgWd+283zoSk=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB3181.eurprd04.prod.outlook.com (2603:10a6:802:a::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.19; Sat, 21 May
 2022 15:03:05 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.014; Sat, 21 May 2022
 15:03:05 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v5 00/11] ethtool: Add support for frame
 preemption
Thread-Index: AQHYa+cqehaWXK64WUeB49V4C8aceq0oW6eAgAEUSAA=
Date: Sat, 21 May 2022 15:03:05 +0000
Message-ID: <20220521150304.3lhpraxpssjxfhai@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520153413.16c6830b@kernel.org>
In-Reply-To: <20220520153413.16c6830b@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca23daf5-e296-4b16-b73a-08da3b3b0215
x-ms-traffictypediagnostic: VI1PR04MB3181:EE_
x-microsoft-antispam-prvs: <VI1PR04MB3181F244D450D86B11214389E0D29@VI1PR04MB3181.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5F55TYUBy5A/rfr6cD8FDAYU8vfGCD2Ls/PL63XDQXIp1rJ5/a4E/tFjB5fHVfFiD5iETROjbze/DGzOEUcqnlZi17LHjbBbZSQ+MKKC7pNj+hSDGfXhICWq23aVaUibeRZYfd9EGcBc2XEJMgWb0u38LfqBDQpXH/nI+vKI1HNg5/PnU/6uw7cMwmWoM1DA5dBz+fBNRJ0qbE1FigBATcPG+onEdpQdU2Uv0u/HcpPAx1rbuPQ2qRPMblPu1ORfJ+6IkNVMV95/dcEEeNu/VkzTMj6lta65Ozev8LwTaH5t+K5/dnUzObbyeD6qy+j6xsW2KX/tvJ5ub1ImCJ9BZAVRx6wPlBXhNA6zt6o6DuZg0PbS4Or0f3sRFRjtZt4rTiJd5U6ysccHRb74nQxTpZiQTV1sVLsvTUofJhYfS1BOIs12MkbxW70XaolaUcM58hTkrNWO9djRigSQPx5HKXUSlVNWckw2BpTGlp3zIRzwpScABBKI7lDumMSusNjiALEXpCVOd3SfTAT/SPigwT39qRhxHwzfwXI5ropswlJgXkdDEsh5uUeaR9OFXOVZJZN+BwGC7aEk+VQrbSFfauYfFmE2QEzyAhOLCCI8aZ9fdM0igjfGN9MXWdt61z7zVu6n6bL6MpyXXllFcHEWD518ba72kBAAX+lEkFFkgppnuNO4pq4OogzQGa/8EJVDxM9RKZMIFXL3sFzsFsfnGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(122000001)(66946007)(86362001)(76116006)(64756008)(66476007)(91956017)(8676002)(4326008)(38070700005)(66446008)(66556008)(5660300002)(38100700002)(2906002)(8936002)(44832011)(316002)(508600001)(6506007)(54906003)(26005)(6512007)(9686003)(6916009)(83380400001)(71200400001)(33716001)(6486002)(186003)(1076003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jGbukd5SXVADTVhpcLFFGls5/h3xQZ+E56ewE5QDgucORWmFOH2yh+MoX/vU?=
 =?us-ascii?Q?+R99L/4BRAFWY90TmMkU+RIg0zglE5MG9GY+NLi43WFBOcI6KENbBHO6vquV?=
 =?us-ascii?Q?z2BXKPDosa6s7mGs0RyrvUAbCdp28jdmceqxCYN9W8kG2fefInY+N1vsNoJF?=
 =?us-ascii?Q?dzzUvwLC4IqIEx5ggwjkITa8HVVylodrCexakKR/t54qLvN31x9gaEe2tzcW?=
 =?us-ascii?Q?XBHdQw1oeD3yKcobQwMtT025Zf/ROr6FAa07F6lvv//uNX5jLldtmHHeImMZ?=
 =?us-ascii?Q?Kk/tSZfOAd0DqjHlMatoxx7vD8JfCXnQL9NnxH2CqbYJqwG70p1H4N+s3uYo?=
 =?us-ascii?Q?+C8angvYaCX2oEJSJR1aeATNO4c85FRRH2CS6zUZ3RWWceKJDcavssxjN2ML?=
 =?us-ascii?Q?CF12zaJboH5wIWGpj7xRhu1fnzEP8qJUG3u7MzD/HYm2civDHSke10kZGI7l?=
 =?us-ascii?Q?sR9Gcht/YQH1hI/QD28ndiWGFpf+2QEEDAOhTsEKd01w7J5RwqWDYcpEUUhF?=
 =?us-ascii?Q?gGHEkewGDypNp4g0LIJ+U045GePJhSdX3ZYwW0loL8zDJwGZl2eWCOxBRiHc?=
 =?us-ascii?Q?WgeC2HUBrAt4DsDdTC65t1/MXXNgXAeX+M4e1yzoDnlN/I2e9OUeewJDF/UO?=
 =?us-ascii?Q?7OaGFYwnV8cCQUxL36VfOcCumCg9PhEM25huNn1vCUNiCJiAvSFlM8qPmSq5?=
 =?us-ascii?Q?Vu9W/UxjzVHmWVHc6DeK9F+/3QvGpB3g9wTUOHeht/L2UPmdX2iCl5gYL8DP?=
 =?us-ascii?Q?ueOzcH2GQ6/WUQZ+ZHdu9e+5w5hf/abZ81tCpgDmY5r7eZk0cV1xye8UppR/?=
 =?us-ascii?Q?2MQxA9R9gMMi2mjdskjV1o57fT1RFrOM0bLMsop7Bm4Gxw4jfULTizqdOM0W?=
 =?us-ascii?Q?LAV/NcM0TfaBIDkkz2z18yrBLfJJX3pkCtEbAOLaYHeUriPZn0wf79lybn5D?=
 =?us-ascii?Q?btDz+sqOwCZwJjgHylEuJFRpzpncFi+SB7z0wXuo+mIFdq2VHa6XU0ndtPfr?=
 =?us-ascii?Q?NJxd8vRit2ZIqM/QJoZOuUTdIJK6ZsITUp9S/1zaaHu4FfJhHUzPMu8trTDb?=
 =?us-ascii?Q?Yeo66wtPKAaD+6v4O9QpBTQIoAKKwnau8B+JFxSCkaIZ030bsHDuKo91UHvs?=
 =?us-ascii?Q?ruTo36EsF4iaXmn2N5paCDmMc2aN6lL5B9Mg5w8NqoG4FgPBC8tnTI5bKNw+?=
 =?us-ascii?Q?cnZwe/rgLhXd4IFfEZ+BzJUs1rInF0ee74bsrB7itZpEpHaOj9nIPAjDL5l9?=
 =?us-ascii?Q?mTXOcUNilzR3eSSYwK+C4+EI3SgTj+ExG3s/gBgrKyxXkRaCCFV4J4ZqPsgz?=
 =?us-ascii?Q?LBXIpRu9ADTIGVnbwUPSv5CdE61cUrfTq3eqmpTUq8PhOEcxppUKh4Zo6pSS?=
 =?us-ascii?Q?DrG5EeLWkBJBlRK7M8q1mB7rFW0GyLHyOuKeXEBq9apyEVIgSRXm9PzQiXQB?=
 =?us-ascii?Q?e47ioSaPA+GjQMmqkb4XeemfemrkZEPweNy/TIve0ovi1aKn3q/FXQa278uZ?=
 =?us-ascii?Q?3S01daP1zoPoDIiNYac6Xb11VZ4uYYFdtIzGb0Husvrc5VUrSCvaRr1rQFtv?=
 =?us-ascii?Q?bbIGwMrB0v7mGnL+FZKPc7F2tYwjRBpoywF+h7bSvX55sxvoE69nDgvQ/+ql?=
 =?us-ascii?Q?Cek3cmHoCuAXnB6LaXZUopMym6UtIVaB+zOy11SoiIjJImQhHgoFohNInHvf?=
 =?us-ascii?Q?1hJbehIsYywHD+1CIm3vC/e6q+259VBb8cFdkMmp0NRyIKXWI82ibC84/pfg?=
 =?us-ascii?Q?+WyNfeBE/Thl0pX0NuklRiQxmcVPCaI=3D?=
Content-ID: <929CE2FD7CF91A47B3AC42B6C82F6679@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca23daf5-e296-4b16-b73a-08da3b3b0215
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2022 15:03:05.0277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Ud28JMuMOM2AK/53JNYRROVhRhtkR8k6nZ54hGpq+QXGs/Z0aq3jdIXGspGwWwz6wxzQhWAo67iyD5mibi4RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3181
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/11] ethtool: Add
 support for frame preemption
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

On Fri, May 20, 2022 at 03:34:13PM -0700, Jakub Kicinski wrote:
> On Thu, 19 May 2022 18:15:27 -0700 Vinicius Costa Gomes wrote:
> > Changes from v4:
> >  - Went back to exposing the per-queue frame preemption bits via
> >    ethtool-netlink only, via taprio/mqprio was seen as too much
> >    trouble. (Vladimir Oltean)
> >  - Fixed documentation and code/patch organization changes (Vladimir
> >    Oltean).
> 
> First of all - could you please, please, please rev these patches more
> than once a year? It's really hard to keep track of the context when
> previous version was sent in Jun 2021 :/

It would have been nice if Vinicius would have posted these more than
once a year. But let's not throw stones at each other, I'm sure everyone
is doing their best ;) These are new specs, their usefulness in the Real
World is still being evaluated, and you shouldn't underestimate the
difficulty of exposing standard Linux interfaces for pre-standard or
first-generation hardware. Even the mistakes I may be making in my
interpretation of the spec below are in good faith (i.e. if I'm wrong
it's because I'm stupid, not because I'm interested in leaning the
implementation towards an interface that's more conventient for the
hardware I'm working with).



> I disagree that queue mask belongs in ethtool. It's an attribute of 
> a queue and should be attached to a queue.

Sure, you have very strong reasons to disagree with that statement, if
only the premise were true. But you have to understand that IEEE 802.1Q
does not talk about preemptible queues, but about preemptible priorities.
Here:

| 6.7.1 Support of the ISS by IEEE Std 802.3 (Ethernet)
| 
| For priority values that are identified in the frame preemption status table
| (6.7.2) as preemptible, frames that are selected for transmission shall be
| transmitted using the pMAC service instance, and for priority values that are
| identified in the frame preemption status table as express, frames that are
| selected for transmission shall be transmitted using the eMAC service instance.
| In all other respects, the Port behaves as if it is supported by a single MAC
| service interface. In particular, all frames received by the Port are treated
| as if they were received on a single MAC service interface regardless of
| whether they were received on the eMAC service interface or the pMAC service
| interface, except with respect to frame preemption.
| 
| 6.7.2 Frame preemption
| If the Port supports frame preemption, then a value of frame preemption status
| is assigned to each value of priority via a frame preemption status table. The
| possible values of frame preemption status are express or preemptible.
| The frame preemption status table can be changed by management as described in
| 12.30.1.1. The default value of frame preemption status is express for all
| priority values.

For context, I probably need to point out the distinction that the spec
makes between a priority and a traffic class.

A priority is a number assigned to a packet based on the VLAN PCP using
the rules in clause 6.9.3 Priority Code Point encoding. In Linux, it is
more or less equivalent to skb->priority.

A traffic class, on the other hand, is defined as basically synonimous
with a TX priority queue, as follows:

| 3.268 traffic class: A classification used to expedite transmission of frames
| generated by critical or time-sensitive services. Traffic classes are numbered
| from zero through N-1, where N is the number of outbound queues associated with
| a given Bridge Port, and 1 <= N <= 8, and each traffic class has a one-to-one
| correspondence with a specific outbound queue for that Port. Traffic class 0
| corresponds to nonexpedited traffic; nonzero traffic classes correspond to
| expedited classes of traffic. A fixed mapping determines, for a given priority
| associated with a frame and a given number of traffic classes, what traffic
| class will be assigned to the frame.

A priority is translated into a traffic class using Table 8-5:
Recommended priority to traffic class mappings, which in Linux would be
handled using the tc-mqprio "map".

But attention, a priority TX queue is not the same as a netdev TX queue,
but rather the same as a tc-mqprio traffic class (i.e. when you specify
"queues count@offset" to mqprio, from Linux perspective there are "count"
queues, from 802.1Q perspective there is only the "offset" queue (or TC).
This is because we may have per-CPU queues, etc.

This is even spelled out in this note:

| NOTE 3 - A queue in this context is not necessarily a single FIFO data structure.
| A queue is a record of all frames of a given traffic class awaiting
| transmission on a given Bridge Port. The structure of this record is not
| specified. The transmission selection algorithm (8.6.8) determines which
| traffic class, among those classes with frames available for transmission,
| provides the next frame for transmission. The method of determining which frame
| within a traffic class is the next available frame is not specified beyond
| conforming to the frame ordering requirements of this subclause. This allows a
| variety of queue structures such as a single FIFO, or a set of FIFOs with one
| for each pairing of ingress and egress ports (i.e., Virtual Output Queuing), or
| a set of FIFOs with one for each VLAN or priority, or hierarchical structures.

I'm not sure how much of this was already clear and how much wasn't.
I apologize if I'm not bringing new info to the table. I just want to
point out what a "queue" is, and what a "priority" is.



> The DCBNL parallel is flawed IMO because pause generation is Rx, not
> Tx. There is no Rx queue in Linux, much less per-prio.

First of all: we both know that PFC is not only about RX, right? :) Here:

| 8.6.8 Transmission selection
| In a port of a Bridge or station that supports PFC, a frame of priority
| n is not available for transmission if that priority is paused (i.e., if
| Priority_Paused[n] is TRUE (see 36.1.3.2) on that port.
| 
| NOTE 1 - Two or more priorities can be combined in a single queue. In
| this case if one or more of the priorities in the queue are paused, it
| is possible for frames in that queue not belonging to the paused
| priority to not be scheduled for transmission.
| 
| NOTE 2 - Mixing PFC and non-PFC priorities in the same queue results in
| non-PFC traffic being paused causing congestion spreading, and therefore
| is not recommended.

And that's kind of my whole point: PFC is per _priority_, not per
"queue"/"traffic class". And so is frame preemption (right below, same
clause). So the parallel isn't flawed at all. The dcbnl-pfc isn't in tc
for a reason, and that isn't because we don't have RX netdev queues...
And the reason why dcbnl-pfc isn't in tc is the same reason why ethtool
frame preemption shouldn't, either.

| In a port of a Bridge or station that supports frame preemption, a frame
| of priority n is not available for transmission if that priority is
| identified in the frame preemption status table (6.7.2) as preemptible
| and either the holdRequest object (12.30.1.5) is set to the value hold,
| or the transmission of a prior preemptible frame has yet to complete
| because it has been interrupted to allow the transmission of an express
| frame.

So since the managed objects for frame preemption are stipulated by IEEE
per priority:

| The framePreemptionStatusTable (6.7.2) consists of 8
| framePreemptionAdminStatus values (12.30.1.1.1), one per priority.

I think it is only reasonable for Linux to expose the same thing, and
let drivers do the priority to queue or traffic class remapping as they
see fit, when tc-mqprio or tc-taprio or other qdiscs that change this
mapping are installed (if their preemption hardware implementation is
per TC or queue rather than per priority). After all, you can have 2
priorities mapped to the same TC, but still have one express and one
preemptible. That is to say, you can implement preemption even in single
"queue" devices, and it even makes sense.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
