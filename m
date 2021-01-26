Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF23030F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 01:25:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 652C320506;
	Tue, 26 Jan 2021 00:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WeUMTk3eHTUM; Tue, 26 Jan 2021 00:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1AB8B2E115;
	Tue, 26 Jan 2021 00:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5821BF33F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60B9A84E5E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFAxxqk-kXuU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 00:24:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60087.outbound.protection.outlook.com [40.107.6.87])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B08A84E15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 00:24:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa//lL3aSjQ2Y4bKoABUqwdtgGDhMTEa0XZyj4g2LJeCAbiLf3L8O0ZA4Uri4/7nHZZ5nRPbxzxxSfdisZnf4PeTlXdwoqF9tpnM02NFduhJYPkTfRm+RgA2Rj5nlXvcaBGUAKM6xtA0vtdg8i7JeWWgTPkC8vDdhCH8FNQf53m1qAF4Lqqj9PAQ9raO9vlQ6zZ8s0Uo9DyQeB5XGq3u1uSb9/h6OC7U9nhM3pr7Zwvu+aQiEOHayxLrh+i92ObyzwGIEjuw0CfApsVbKeIyu77JIXpWADQ+nyosnE2EOiGHlAbvMom3yaA6rTompZbpuGXvIlR54kM+heOXVoh2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPqIyX0/z2K2AORVgGAfeuqkIZt9w8VEOcPTfjlrs5Q=;
 b=J31psl0uzX1ymrqzeOcalK1maboijati2t4J5dqS2x4gbXL5SuX7YtUkigHCJRhfNDx1xWRRts5+ETEpUTBASrCgrmYBb/kyrbiSiz11+rCVnrbV/xyv40jF0cwFNfHgMUn59hu/l0SL6tII+AR8Dfnth/fU1zNtD5u+9f0CB+PZKpWxSQbg9RoaXpzGXc8x2IzmLBWn9W6wUcjASKI8m+8NUVgTQQC+AueYeXm5giSsmF73Nhh6fUtFWmtYAxmS+/IfhC+3sqlxhtzSyIu9RfwFc/oVXX6nFfXiASXnDMobfk78uWDKJvGVT9HDiU0tEyIpvPv3xdsF/rhmmYyQaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nPqIyX0/z2K2AORVgGAfeuqkIZt9w8VEOcPTfjlrs5Q=;
 b=rkY0N+utJL+CRe3mVbvUQXRV/QoCm780wvhPY/MiYcNguXiKWSqBGPXFcv6oJu0YtNgyMbhvMeMNYc0UnPGeaE9cT2hdEu/kSYXPIHmrK9v6JcCIarlZxZJ2QRcjmdFGUhQTYvZlUwGQSIM9dNn6brcDs40xXGuvM7TsvfKpMtM=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB5344.eurprd04.prod.outlook.com (2603:10a6:803:4b::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.17; Tue, 26 Jan
 2021 00:09:25 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::3df3:2eba:51bb:58d7%6]) with mapi id 15.20.3784.012; Tue, 26 Jan 2021
 00:09:25 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v3 2/8] taprio: Add support for frame preemption
 offload
Thread-Index: AQHW8RBJQDX+89PKk0KRFCgmtnZ2gKo5DOAA
Date: Tue, 26 Jan 2021 00:09:25 +0000
Message-ID: <20210126000924.jjkjruzmh5lgrkry@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-3-vinicius.gomes@intel.com>
In-Reply-To: <20210122224453.4161729-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [5.12.227.87]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 371aef25-1d65-457a-7436-08d8c18ea3f9
x-ms-traffictypediagnostic: VI1PR04MB5344:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5344806C60EA416BA47D0BB8E0BC0@VI1PR04MB5344.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 01bdiIqqAXQn1HFNYeoEDXbFhf4DUJwamcjEZmpWxttrK/nf2+qz2oUsiHw2UiSCYGIBzkBIbnyUDEJnolHJue/teqP6+mVGLX/ahtQPBonOUdZyCzhsOF7OEzEuxBy3UmlT7/4nj7pnB2IrX+02I0DeART1zGdqHgzGfMjVe5TTB7ir77JmqP51K9DinZ23FLTv/noB+PoJ5EVqcAazPAuuWC7PyOtSw4HTH6cdqaBmnUxOm7unYuarxujsax/KJRNVLUm1gCJoJYAQ1mcyUjF9PZnRUPgydKhzjQuHWHinc9RKIqzALc6aDen5sPsdIYbXbicTEpqnxc1tYikInMyrVPag9/ZLbO9FWdgSzIJoLpyr8+gClWAlBmyW+Bj+oILtMAsOTu8UrlinxAKtbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(39860400002)(396003)(376002)(366004)(136003)(346002)(7416002)(91956017)(5660300002)(54906003)(66946007)(71200400001)(6486002)(66556008)(4326008)(66476007)(8676002)(64756008)(6916009)(66446008)(76116006)(1076003)(478600001)(316002)(44832011)(33716001)(6512007)(9686003)(6506007)(86362001)(8936002)(2906002)(26005)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?FMTuLeDFaSNpiHYMXBw7TW+s0wMKaaSj00/l3AD8WCb5nGNEEEvJFRANdKmj?=
 =?us-ascii?Q?CF392JcClIFk2ZQxRlRHy+XWUeozDVNxNz/VJryw+q1IL04bMeBsTNLODxMn?=
 =?us-ascii?Q?mMUlrhGKTsB/1oHIdVvoEJ42YAjDBDQ2sXAn23+Ep7/s4pZMjPhh8WjNYW61?=
 =?us-ascii?Q?OC+DK6pofWoJdNr3ULLLgXDeWnHq1GN84KskEYFMr1/3G796QZl4Y+bxAfEG?=
 =?us-ascii?Q?HlnP43goyK63VNd40qzt880oFK32/9nt77DJHTkNHrTPelfPG15tMzIHRM8t?=
 =?us-ascii?Q?JC7pDVyx/jBhYFE8Pxk6S2v5vzT10IBJ9KTYKm7ipMq+TdFmJZ49uMeyddun?=
 =?us-ascii?Q?UYZvAx6kOhwZeBCupPclW3/cptn5JCL0ZkgnaMqQCVJJUZS1vdp5+bUzpaSE?=
 =?us-ascii?Q?NNVAFCnnQynjCXL0CkKx8svDqTJEuz3tZ7pd8GDjHFnnPFHep58G2ipRtFM2?=
 =?us-ascii?Q?J3ZCNr7qevEQB+JZp2GP8dySHquACt7TYiIln/eF0Bfl1b5/RCIqzhF3glv2?=
 =?us-ascii?Q?m4U5FDwUa5ezjcfGxK6uTJCp9WdPhb33c9b7b+PzrWbXdTr/f6RExwhP2SKF?=
 =?us-ascii?Q?0htM1dnq4wdxxjyN/iDV13vpUyqJEOPw/YJ3sbL7STp20kdgq7pYnQ7LPeMi?=
 =?us-ascii?Q?Vc8j9cbtzscRzfOkBsMA62Mnp6YSqeTVHZnxRcpK7IlZazw2vxwDPlmaF+p2?=
 =?us-ascii?Q?O2Mjul7dBjXxdNbORrPD/aq6PNinJdVpYYvstCF1cEru49HA5dUg/nWarCC/?=
 =?us-ascii?Q?QIlZ0Y7Gu5duykMjTG8WoWMEEsYD72KRvOFOvLLghXWuw2TKJ9G2aicO3Rvg?=
 =?us-ascii?Q?GmOIneJYmNhS/XdC8ypev3g8oVQTf6AWjq1hdifxxCNYlKdYv2ebghOZVbWN?=
 =?us-ascii?Q?Io8SQU6U+BKPstH4D9IiusH8ewsZZqKBDHcgSlbLA5X+3JtLRJqJvrG5/tJY?=
 =?us-ascii?Q?lZKueKbCz+g34LD2x3KD5XOV289eVXIyXX60ceaOMIqCQJUAW1GqGAmBVLGT?=
 =?us-ascii?Q?eUKKfwNAiMTIoSSVquQ0bbTjPsjBx3ZGepyjEqu9YMbHbdd53OjeDAPi1/OS?=
 =?us-ascii?Q?sVGzR9xA?=
Content-ID: <515465FA6579FD43972927240F724429@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 371aef25-1d65-457a-7436-08d8c18ea3f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 00:09:25.2446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Upl9sTEemdCw5e1nde5BCWx3L/FVs58P31MiEJh1aGETNCguqjSxJ3KBGEgyqRTPZTOggwwt6Ym3TGvcHquHyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5344
X-Mailman-Approved-At: Tue, 26 Jan 2021 00:25:06 +0000
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

On Fri, Jan 22, 2021 at 02:44:47PM -0800, Vinicius Costa Gomes wrote:
> +	/* It's valid to enable frame preemption without any kind of
> +	 * offloading being enabled, so keep it separated.
> +	 */
> +	if (tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]) {
> +		u32 preempt = nla_get_u32(tb[TCA_TAPRIO_ATTR_PREEMPT_TCS]);
> +		struct tc_preempt_qopt_offload qopt = { };
> +
> +		if (preempt == U32_MAX) {
> +			NL_SET_ERR_MSG(extack, "At least one queue must be not be preemptible");
> +			err = -EINVAL;
> +			goto free_sched;
> +		}
> +
> +		qopt.preemptible_queues = tc_map_to_queue_mask(dev, preempt);
> +
> +		err = dev->netdev_ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT,
> +						    &qopt);
> +		if (err)
> +			goto free_sched;
> +
> +		q->preemptible_tcs = preempt;
> +	}
> +

First I'm interested in the means: why check for preempt == U32_MAX when
you determine that all traffic classes are preemptible? What if less
than 32 traffic classes are used by the netdev? The check will be
bypassed, won't it?

Secondly, why should at least one queue be preemptible? What's wrong
with frame preemption being triggered by a tc-taprio window smaller than
the packet size? This can happen regardless of traffic class.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
