Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8D759977E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 10:38:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B85608403B;
	Fri, 19 Aug 2022 08:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B85608403B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660898282;
	bh=Rmdq0blwxFdRZr7imyIcc4lZ3Xb1RNzGHZ8ToNs/1u4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=puO7IrlqfYlvzeyESu9HCZB4jbW5q8nnqqly/pt8+z66LxgyaRXqZvWg5udUAKFBg
	 Qb2G3wQNhJrtm/mSqFqWDL97gD5lcyM/sY69DtX/kU6MrUIAKzbe4TtiB51CIXp65q
	 zLGIIqf+o5RrQEjuNtw5v/N2TzbCMIhEmvweyGiCsm6EKoq02tPmZM38SXIjw5aeLM
	 zqHl6L/YhrPGFad7FK45jK9xVM53Lbbl3Vi5ul7UliWMRdiVVYnOzXZrdcAtK88v9j
	 WprHKpP1k0HfbWTAxnZevERpaE1j4fJb2aVR/u5/6sqBrWlL6DVvm5ESuWY9HAw2Kx
	 4nnu8gUHMjHYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8rFUDocETLH; Fri, 19 Aug 2022 08:38:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EA668402D;
	Fri, 19 Aug 2022 08:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EA668402D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5EBE1BF2CB
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7642A404C7
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:37:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7642A404C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjs36d52oUZ7 for <intel-wired-lan@osuosl.org>;
 Fri, 19 Aug 2022 08:37:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F86640160
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F86640160
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:37:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="379262447"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="379262447"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 01:37:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="584581351"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2022 01:37:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 01:37:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 01:37:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 01:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgf0clpzLzMMAb1H6bguX6wXxTnxC8ScUQsH0cy96g59+zs/KcDdIezg7IpPa7g23phwycVklGvS6G08h1+DbV4uz7wTaDckUMfqNtXiTu3I8p2i9yqpV/cPfXhZsbdoO02/fmeWpDWqKt7w+2b3SgvawpYt7+F4ttYW70eLiEiaQZAFQJRjqwyuET5QcRFNpL8xwPFH7P/bXyyWKMVbiyQAFEQjenykofCmeEHmoU1g0phawQYWbIUmRevjbunl/GKdwTmFB3xi/cfSC2D44YacNwUB+PcFVrVv8sKiLTViRZ7Tev03Aj/jLPd19+zvKJ+SxfyL15SLcLtXqfSgMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjmpoWq38vPDIQWI+vdxks/3QcX5PKE0hAYwUZc3WCk=;
 b=ATUURusi5lp38uecbKlh4vWXFwpho0lPhKtyDPCfacSnGKMDeB/0dHzloTleEQ956HtydoZ5R5lDCQLNJY7qtbT7/OoMJbcQ6cw07AmOpORjnHYhEmP3Ri5mcMhlJdqs+B0DcqTHvtryF4athm/K0viR8XnuFyYU572U4B+fsqWYemKHmfUr5L6g0n3VW5uiiTjgCIV8kLZUX+5q/wNMv0Q6by2dHA8iLafFuzL3cf5soKh6vCQuPj/Jjj0n3+juuAkXR0FwJZLdq7Fu2Xp5etne6F4/kyhJMNcjvnf2g7dPldFELFmBfNXmpCtYS0KhVm2MLW3H8ziuNSESNa7kIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN6PR11MB3088.namprd11.prod.outlook.com (2603:10b6:805:ce::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 19 Aug
 2022 08:37:49 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82%7]) with mapi id 15.20.5504.028; Fri, 19 Aug 2022
 08:37:49 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: Intel-wired-lan Digest, Vol 381, Issue 25
Thread-Index: AQHYo0wdKathnBz8qUmtYfxxpcqGm622Bu0A
Date: Fri, 19 Aug 2022 08:37:49 +0000
Message-ID: <PH0PR11MB50130A83F635490E26D9B64A966C9@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <mailman.27568.1659100001.203464.intel-wired-lan@osuosl.org>
In-Reply-To: <mailman.27568.1659100001.203464.intel-wired-lan@osuosl.org>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5562c06a-a611-457c-7822-08da81be1986
x-ms-traffictypediagnostic: SN6PR11MB3088:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rxXQKFeql9qhrP5CPCB05IZz458jZeR5OAu/rYtewECrG6S0cuAmgXMWoU5wNe0emmi6y72wCZ4q9/YRqSNVbiiEEtk5gGM+AAys0lkJJ2G5AAa9i5ORc6svR7c5HGXjUOnwJC1nhNB8LetEtQ1KrQ25rhWARdYabt7csHETTgRtFMHSqjLXvGopAB/3OtwbnLZRa079HwkVHSW9554MmRqwX0H500ShGy93rHn76C49H6Fu8qqV4S/wu9bs+wfK5bs+LL7udpcVc2H9CWhqJLJeFK7qXT14L2L4sMubNgIkYF9svMq7rk+PX9NhIOOC7hDSoLv7Iu7PGfsYo7JSMD39la+3qDy9hR/rD19Bg5lzJ02/qjuJdQvJxTznPwbRvZvhRW+dTiRuVaodckKjEkdtIuoFFeW1bdZNaxa+Hpy5bKdQ/2dRCj8P+9fzHNzLCqjpCa5Tf4jiDhRQoFzjnKbH3zBYfqHo0CSGgF0I+uuv5NxMnSce73kjCaOLk+Z939DW68K7+9V0fmKDsuM4Qv2O9/Vhuu/cXq0t1M2SUukfK7GMR7oAKva7EpoO83DbpE7AQBgGYL1cIMUgRmbomjEt+WG5ypHrEt5JjVqMMYQTlKbbRCABPkHlujXfbVer0UUqZypUnmFXHMOC27R8NUDk8fIMsA4/la506jtH+wTws2jmywG+Gx6cWXMLpNzFCf19B+kV2hvk08bnXmqS3QtwuSl4cZ9D7h6G3JU4y20FGDsoe8LqtZY8tMXrIeXxU5hzz9R78HfnX3CV0+KJ4YAAJKnYcUiLaB9zuayeVmM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(376002)(346002)(136003)(39860400002)(66556008)(316002)(6916009)(66476007)(66946007)(64756008)(76116006)(8676002)(55016003)(38100700002)(8936002)(2906002)(5660300002)(122000001)(66446008)(52536014)(82960400001)(6506007)(33656002)(53546011)(38070700005)(7696005)(86362001)(186003)(478600001)(71200400001)(83380400001)(966005)(41300700001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?poNtvop12JEIfeMLG6gPpF81GqZT5O9VztRBbNe1v3mwIuPIKVrIFSMHTmzk?=
 =?us-ascii?Q?1jtqJnk8DGDj0+3mz2/o6kRWBLebeA/zJsS9RTGu+3+++219K56OSH+Na/jH?=
 =?us-ascii?Q?LI3SPDxpxeTJJCGByCZQREfvq1jQ+mpPnkgrl1gF1tW2sgs1IAsO5zGMlO16?=
 =?us-ascii?Q?ualM3sibtktAacFaj3ebxgS4wMmodTZnXzTlIw+rFsPfzQBFMiJ2tmRYsuQ3?=
 =?us-ascii?Q?9LQS0nJdjnuOCPiIWGRL11y0lsVbWQpd96Yqt8fpIAzfAFgyAhLtwd6yQQQg?=
 =?us-ascii?Q?qI370NWBdTcD9pJ5+wmYSvb8Q/BboGpi0YntD/vikGqUjUuBHTPvhNdaHVCE?=
 =?us-ascii?Q?Wx+ICA1iy6K9yvZptyo+t7ZE3yzu5ogu/pOT2LXd7G63CNS9A4HwfmnP9CCB?=
 =?us-ascii?Q?mQ9t8WXMqJX8Ddqqe8Ro7qdbm87Fmm0ZCPXyEs+mM1Os/L+Ywm/stVIGI+li?=
 =?us-ascii?Q?2ARHZw4phXcyL0BMM3MEzTiqXb9bL0Nqlv1ojyyT1MKOvndvu25bRjTDaL+X?=
 =?us-ascii?Q?pYFC4X0H4e3Lkt33oyncvNoy+bfi3WhDF676e9Y4V7AAA0MDvR/8ZpgIxZBN?=
 =?us-ascii?Q?6O66d6wE5A5nr9XSaPy1GZZNfceizU0NTEVotUSdePwURnISi2E9cdeQgZSK?=
 =?us-ascii?Q?/OtKvL/cLkVhRnZML5PDqN4yhxy3P6jtAxMp3LXUkvkKzyn7y7pFtHiYqbzy?=
 =?us-ascii?Q?Et8EJZQMc9pzxMn5XHHrjR0LmCmLIKVEpOU+eB56KOxHsuq49XQjrKb1SaQL?=
 =?us-ascii?Q?lnBvMSaSobAtgJUw94TDFXmQFt3SOaPI/f5pE4Du+7TWZ7GPoLpyzzb71KWK?=
 =?us-ascii?Q?VIw93X8v+u7Mak1f7hWd4Ic1J/JzBuP9jicf5DWQTckMsc50dcn67IfBM82f?=
 =?us-ascii?Q?yn0RRRxVznEQ2qBaCZ5hjZVuP6VWbJI3TmSZzTqnFjvRjcu5N0431LoFFr59?=
 =?us-ascii?Q?l3pZAn3uPyZ3zz3B6AiPCTPGshfuy2pUoIeuSP0qBeyqc/ffUQBfaVlMo9Qz?=
 =?us-ascii?Q?Au3jwvjVV9DmlZ3k1e3pRWZW+z3+lLBKlN9+usZ9B4fSfJBLiEcLI9oMzYdI?=
 =?us-ascii?Q?oVXaxR0McI6id/ZfooBaqoU6Do1j1mkxwFAG0XRWrh2F3h+YiQkbPZxLm25/?=
 =?us-ascii?Q?jv7cTvedRhrLDyX66PK3uVd48irVDFID/aWyvJF7r1ulJYg/WfSMQquvFpXr?=
 =?us-ascii?Q?F0exjLgCRM9NKZvSHQmvqBO2xXOSMgVzsNE94n9NLiRiEtuN0/uY+h4zCn1c?=
 =?us-ascii?Q?fYGgPNSoNm0ib6hYnbd9ezWDrnBUHI3tzO9LbIKxT91Q12vzrOYErTz4DKM9?=
 =?us-ascii?Q?8xWPfBKWV0fXIaztj46cUJVJjbV78uUNEvgKMfhuuuM+T+d/M30XSVWsv1MA?=
 =?us-ascii?Q?T1SaIJpFKBlYE3Wl1etfiB+yhiA6KKQNSotb8gQn0T46MIls0M6z2opYBh36?=
 =?us-ascii?Q?EMKZc5IdTDX0VIYuOxp+W3s5Gmw6qc8TukKgZrn86yxqYBT4rB0W015UDML3?=
 =?us-ascii?Q?auXKM44PiTFXOjEhx8fN70WWuny6l6hD5gQCFJgwqpGZ08DOQKsU9fQE5wU6?=
 =?us-ascii?Q?xntrZeP4JohdTIv/tGcXk2lEhpBR2Dqh4Q9qgVemYIT3bdzt5gClnaIZm7cM?=
 =?us-ascii?Q?Yw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5562c06a-a611-457c-7822-08da81be1986
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 08:37:49.8046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iV+09CaMStMbST1CIva//EZjTzyG02ROc+nPlBL5Rr82cZ3hMpH72O/VxYK46ZJQwGIv6NL4bVapb7bmTxkt27ALRy6+SrzMh5wozKJBT8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660898274; x=1692434274;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=faO/KRrz93RLrWAuMJZ2Ns6zQ2vbafCx8tNV9qPqF5U=;
 b=HFSLcaZfPR48i9BmfkeDSZ5NWK38cXnpTJZHxeSYaw589+wVQWAxDp7l
 BpF3ZpM9Jd6FxPtfRfcCmA0omekB1qaqvtUWwZCesPfMHhLWnkLsP94k9
 cISBzDY4Jfzs8HmStVKyObKAKRI9yr7eZedV8rquLNSITDcXVwGaxjxO9
 L9uCDm34bv0HIAQ7dpqorpNAM28E4cSojRevW2LLAl0bKUot3rjBvebSX
 iLGgLXpJm95LP6qFPXzXg5bbCPZr/CJF8fZ75PUiAO9KccRmgLKKDsarp
 TsY/Fq7n4Tnkql3HzsUR0FRT+CL5ZPuKB/6V35ODYUdQNOneTKucm1Ktt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HFSLcaZf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 381, Issue 25
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> intel-wired-lan-request@osuosl.org
> Sent: Friday, July 29, 2022 6:37 PM
> To: intel-wired-lan@osuosl.org
> Subject: Intel-wired-lan Digest, Vol 381, Issue 25
> 
> Send Intel-wired-lan mailing list submissions to
> 	intel-wired-lan@osuosl.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> or, via email, send a message with subject or body 'help' to
> 	intel-wired-lan-request@osuosl.org
> 
> You can reach the person managing the list at
> 	intel-wired-lan-owner@osuosl.org
> 
> When replying, please edit your Subject line so it is more specific than "Re:
> Contents of Intel-wired-lan digest..."
> 
> 
> Today's Topics:
> 
>    1. Re: [PATCH net-next v2] ice: Add support for ip TTL & ToS
>       offload (Marcin Szycik)
>    2. [PATCH net-next v3] ice: Add support for ip TTL & ToS offload
>       (Marcin Szycik)
>    3. Re: [PATCH net v1 1/3] ice: Fix double VLAN error when
>       entering promisc mode (Siwik, Grzegorz)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Fri, 29 Jul 2022 10:40:34 +0200
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> To: Tony Nguyen <anthony.l.nguyen@intel.com>,
> 	intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support
> 	for ip TTL & ToS offload
> Message-ID: <8e65876e-4168-e5bb-813c-3bba478a11fb@linux.intel.com>
> Content-Type: text/plain; charset=UTF-8
> 
> 
> 
> On 28-Jul-22 18:14, Tony Nguyen wrote:
> > On 7/6/2022 9:26 AM, Marcin Szycik wrote:
> >> Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc
> >> fields and matching on those fields in filters. Incomplete part of
> >> implementation was already in place (getting enc_ip and enc_tos from
> >> flow_match_ip and writing them to filter header).
> >>
> >> Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not
> >> supported by the DDP package.
> >>
> >> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> >> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> ---
> >
> > <snip>
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
