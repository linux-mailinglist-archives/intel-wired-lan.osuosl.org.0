Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PbbfEoA6IGqVywAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 16:30:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C7763897A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 16:30:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=z5fE8G7m;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 204B5425ED;
	Wed,  3 Jun 2026 14:30:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4w03pYDRKA3d; Wed,  3 Jun 2026 14:30:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF5F1425EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780497017;
	bh=xBPHuo0iNO2PIY6zJasyAy/DkSxKgJgIK4Ret4KwoI4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z5fE8G7mjfGLNLjghWVKFqVHMy6eZZFfu1wVDEoxzZ9EhGs8nVviDZVqZl52XDPhd
	 OuU+jywfnV7Jflf1iHcx8aexLKiIrI3u9Yh0z6onGSZHip4FhiZXFF3ehfY5jmgwl9
	 rTcvkH40+ueNxE8eW/YzFhYtAeGfHFfsFJg8WMCsNJudiolihVzouwrlA7jiTPrLpL
	 Ld+w8Qi1VGFF+gMCsg4FzXF3eRTRolVfO9bPMrrt7eEbxOx3YP7Wx10lw+z5XuskWy
	 P1ZHZ4IRCrQuRkll75lrtxqA6hSG3cbsWgodK/Keo0l/GRZ+m7pIAKrik3brG1RQeD
	 6DjHtOs82f2KQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF5F1425EE;
	Wed,  3 Jun 2026 14:30:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F1726192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 14:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2B9583112
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 14:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id erSwYSb4E7Ao for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 14:30:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3958E830C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3958E830C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3958E830C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 14:30:16 +0000 (UTC)
X-CSE-ConnectionGUID: sEJ4IL5rTN27pER3FjoF4A==
X-CSE-MsgGUID: G6m1IqMlQ+G5NgmKbISzzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="85197168"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="85197168"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:30:16 -0700
X-CSE-ConnectionGUID: 8kVDQ/goS6iRB5rjbiH0tg==
X-CSE-MsgGUID: fCDNZT7QRsqaKqukhRlutg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="237912263"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 07:30:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 07:30:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 07:30:14 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 07:30:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tyQEowBn8huD7G1F0BsnmZ9oE1mwZxwdjL8bAOsQ0L6n1i9OCeJFAcXcPr35l5i5fzIGmsedMQqIerAvG2yZ0l0OIggefXFC0SDPdDLDRmO98rWVfk8CpqtU3l4xHzUGfVKf7RfflbBaQa8EmfJBjqc0Bn45YTvpu/fPS548layFdpSJLGpLJpRBlldQgkYBwxWsJHOau8RttsJPrY3HilesjFRtlrbj0gJUSlcW4d9IJjpmICDffgvda1y0N6DrrI3JO8V4Lmepg7lqCFwTruE+HAem/Q4YrIiQ6DCtWRl6ePHCfzeBhkmDLA6dSG4fyY6D+yjTnz9xABNSTnRb1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBPHuo0iNO2PIY6zJasyAy/DkSxKgJgIK4Ret4KwoI4=;
 b=OjB4uVahYtxtY6xazS47Y5BKEO2BiGoNp/bHIjJW9wS8QnnrVvzHr0JN9cI/y+/hSu10BCCmM5RW1gVnqP1M7PkHdAlICuUI3fI3lrW9s/zLc/ch4gHsMsQEuXw0lRlAUx2kaDbn5zl/PvqYdq+rBeE4RvqwdMs9QKa133QP55gV7rDck8iURrbhtvr2PG9kHjIGYhhb7jiN8ljLuFOGUPSKbiCrHjYDF4acgp4v/A7A9Ck40ZxmbO/EI4XNFbSupnJb4+B1IViWm/UtsxW0vDkio3sm19wQvsGe7OoqcfNzUbOvstgjX5PTHJorD+7T88QlGM0yFkTiilMEng0OuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CY8PR11MB7268.namprd11.prod.outlook.com (2603:10b6:930:9b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 14:30:11 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%6]) with mapi id 15.21.0071.011; Wed, 3 Jun 2026
 14:30:11 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ixgbe: do not configure xps
 for XDP queues
Thread-Index: AQHc5r2Ok5Rm/W4VuUyKyxwDpf6jZrYYYJ4AgBScyuA=
Date: Wed, 3 Jun 2026 14:30:11 +0000
Message-ID: <IA3PR11MB930147B40787F3FF8146A7F68A132@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <20260518111506.65284-1-larysa.zaremba@intel.com>
 <20260521114332.GC1506108@horms.kernel.org>
In-Reply-To: <20260521114332.GC1506108@horms.kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CY8PR11MB7268:EE_
x-ms-office365-filtering-correlation-id: 4b118a09-ada0-4c92-c67a-08dec17c9e8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|6133799003|4143699003|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: DOXBvDuxh8+Tr05Bz+18Q2TmxKc9MwIVVijPr5bZCH/6+oTUu3Qyl+y9mGEl3i2ovjhPb3PaWp9Q/xB/cg5WCUaiAzLTSqbEBsTYALyN+JR4J/Kjn1ZYAj6Zr4lYw/U/u1ol+YhFobLNrdaQv3QVT1+SvxnSaNPS/wmH1m1rbej+gdtRR6+pFd/uRNb6TwIWRDh0wVHMc34GoAT3bK0ImHmIakpF6JNZTTIddYECaiL/FWvZGyvqmPo4RhXJHNGMCYEmfop1FX+Dt/dCwsOm+EaQKpeRxQGEyVSjNg5YhSbJNA+2qw31FJEEtZjgIs04QangpBe7O51Z+018iKA8lD5yuaeYZ05x85FO7JvtqczuVSShFx32BL5T1guCmEWc0NPwPTJtvGVkQDAjTmiYwQaiOODA++srov91AqoDFBdFJOZuooAQpaLBvi4SBnEyibzcvI/LBeLowxyl84K9fBetPk2oxgHwSAxUt6pyigwKW7mqc1juKAoSfhAwFyWK5vWhi9Jsbb1CCPAkQuv1IvOXx2Ln176yqm4GrRzpOJnwDJNdkl5IwyZF1Esce9lDLojhAihpFJAipwMMBdyMi5xkHgjlxQVMzsXDMYMGX+perwMap8WkBfVSoBoBX3QflMlT/Z+w/CSXL7GwtJr3pG/kzkhXME8cOFV2FftKQPUTJpu9QxdtKTg7jkVmfaDPyVQtS5BbU+IQwxnpyA00JdEzwnWKFR1aHTIhZCzILrXufIjj6V4wj5wxVpwJ3FU4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(6133799003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lJxukNSWubIbxtARUbNZZIvJBBqoyest+8RPliEmqZnCLUfw5zpVY1bADt?=
 =?iso-8859-1?Q?MV822Ysrt0TA5CWIv53vIK62OO721sXN1wYy6oXVrj/cZ05vRPAl+hK6sc?=
 =?iso-8859-1?Q?CQzvTldBjXMUP9d9NvnREjFDfj5tu0bn97STGIdoc0weW8FMmbZgDTBf89?=
 =?iso-8859-1?Q?pf3SBclbqB8egh20jtcDjVm5EsxWUiX1KzetrD36yoLkPtx4OBuX3ILvq/?=
 =?iso-8859-1?Q?z6N9jqmDR0znhj8U+VffsVH02GAAOEQbR4dY1EvKziE+3L70ii91px+F9A?=
 =?iso-8859-1?Q?g0KVAe8Ns7tmAQJgMFg3zjkvzuutzUSlz1NlI7PkHS3agh59HU/rXpLf7S?=
 =?iso-8859-1?Q?IZcvOVjkdWqMMFwIS18m+7HNNeHtJqOlO9hkxbZ4v+6z1p34jZWgaZ0jmZ?=
 =?iso-8859-1?Q?/u2Ws8GdH5FdicGFzalP6tkEAOvudAeAvcYcQH8B2n3XTxEU2MEMQxsziO?=
 =?iso-8859-1?Q?oGHHnOhiAaAu94pK6wtL8ND9L0n1oB/ZTRVS4+rf+7gQonKkqZ3C7FnNY1?=
 =?iso-8859-1?Q?ozzh1boAG+cjAir3rSrJZ/3PsZdssQ/D9iwUSTS4iaCa7N7Y7r6hmlRP/6?=
 =?iso-8859-1?Q?B+Fgrp1G4w9yV35rI6beJ1XbT31o1XwvUcm8NPAOEoLi6bTdDWihH5OZ6s?=
 =?iso-8859-1?Q?9D/ykksbmobqGDmNrwnDqTGcP8fizNLAn/JcHA6JYH70ccFMJkdbjKSZG6?=
 =?iso-8859-1?Q?rGyCDdz+qI6Fj8RKTh9iY8GdpayFjWbpMNOXAguxjmLxoRULn6AyDB/s3U?=
 =?iso-8859-1?Q?9Uex5GybFJ4Trqi8tQqtNVQ+gmhi/k5l4dBAM5w6kmMkzIlgYBClcWPAKE?=
 =?iso-8859-1?Q?jxFy+OBeeoTolhhBmCyuTV/HMdOK2KhEh19p82ylBidikKMmP0qv9/kzBX?=
 =?iso-8859-1?Q?xdC+DEPQgZcSAvQlIYxUA3zxrzP+dfPES8iDPcHwEoUjPI0V+y9NxuDUKA?=
 =?iso-8859-1?Q?6M17ES5BaZ0i9DOKasRI0ycpOr6uqXlU2vze9OVlmRait07AoHOP+vgNcr?=
 =?iso-8859-1?Q?QELj+GZBMMQoC6YOXi4cesgjthd98DNwC3jxFVbb6fCkHSwd8R96GWGdBd?=
 =?iso-8859-1?Q?Dq3LKvxyf9RQgLkcvec2Y2EvVKfFjmLaYRUmx27H4aomO8VLzjnxcX6Q7h?=
 =?iso-8859-1?Q?WZJcohI9teixL4ASf/PqY11yxZ59DKmBsDpxC98ocJhQEQaxrkKIdU+pMz?=
 =?iso-8859-1?Q?tv/CrxtPYFc8BFkdwZFdWaOfZfqpWQnloTKLhSz0zHlkHuq9F34Vhw8rC5?=
 =?iso-8859-1?Q?JhdnGZ8ogKIb8osEDoK/5Jks9WoHYHcaY3u25i95vgpWUzm7M/PwhhI370?=
 =?iso-8859-1?Q?MPtf48wwXFAtcqQUUDc8xYBIOn9ciFlANNLickhufxz0WMBgY4x5bqPpld?=
 =?iso-8859-1?Q?/jMv4JBe6mXLOV755z8WSITaK2IIFkpTF2ieL9A7ToR+KBa1TtWR6zEEok?=
 =?iso-8859-1?Q?R4buKL+TYB+H1aAIcstI+ZyqmK+0YQSoKXq4x2FhprXDk4G7V7Tn/Qwe3B?=
 =?iso-8859-1?Q?ASgI/8JkGqNqAZGN+6afAeUWpDqKvYFrs3bAPeGd7gA5pBAsMKbXQEFkR4?=
 =?iso-8859-1?Q?8lbgPG/Vvtb8nzeR4pUbS/jFKUJzcj27Q4vXX4wA3JYjIP/IS5kZ3dl97L?=
 =?iso-8859-1?Q?x9oZg20ZaWqSwp0l6VhcL63CrdjWU8gYkfdbVA/4/dqVa0ilVKcCk/ywnt?=
 =?iso-8859-1?Q?l3CJW8zJq2c98Prwy56HfmmEi14RIGIn/8m2GVya5GGWntoz+8/KYOzIHw?=
 =?iso-8859-1?Q?fr6da7VpMSPKk++yv7m0qNN9rHXtWdyPK5xzUXx654xtLeL76/GCRx72LA?=
 =?iso-8859-1?Q?UZ9njn0+7g=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Kw2FfdW7sbA9qw9iPW0b5ej/iZgfmRvwZXf8BOPfqOb/lV84KoKWn+7TpsgE21bAvQ/NYQVnYRwIYaLnByKASZLtKrDCFD9Tmi8elPZuIyT2fp9G0KUYWFXzQtBl6OU2gzGSNt26T+mRW5ThOetiMBMYEfSP+7uyimJjhxqejmrJxJaKZAxljn4IUvv4yE4dbNUE/TTRd+1LrczcIUOxQZXIzQ9LEUSaPVFRfda9Wp6H8nowOvG2PfZHqghTYqYkJfObDgjWpR34Cp0Kp19J/G6XF/xI4sXvD6lKH/4WFm4+Pc42CoNIZ0eJonS/NVJ7Mrnm+1bvkK/Yk84gBqiDbQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b118a09-ada0-4c92-c67a-08dec17c9e8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 14:30:11.3049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MOH3APHnXcAXttklTew0D7VJdM6uKF4cuWNHRxtl4MXoC00mvANj2auySkze4f+EC5xVfbwbkRmyVpwzlcqLPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7268
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780497016; x=1812033016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xBPHuo0iNO2PIY6zJasyAy/DkSxKgJgIK4Ret4KwoI4=;
 b=kb0UHDc9wZJFGgFYFkFOSDgbLI1fLURhBs4gw0EaOEW6NryEKdrw51hS
 793aWj0lGe/95ClkgFcjI+hRJcjU/vB9TMj4JX6S9OgS89FmF+9BR7c4k
 u2EM0IMzRJU0RDVSBbIGhfjrUke86u886w1l5Ujd4iWswwwjCGLi7qC9q
 71xT4e2YT4Z6YazGLTuEP2l5xvEnt8yv1vBUTkjMIavzSxPbAwlvAX/ns
 IdlJ8+LEPwHAQwO9++nWUbxl+Giv92Lwh44lgehTRNEnLVBiAvjLAMUvN
 iRtJOjUJTKrEw7B+IkKqCyjc+HpC2+bQ+9SAS7DgTAtAJFvOa7Cg7yMXM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kb0UHDc9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: do not configure xps
 for XDP queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:aleksander.lobakin@intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4C7763897A

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Thursday, May 21, 2026 1:44 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Alexei
7> Starovoitov <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>;
> Jesper Dangaard Brouer <hawk@kernel.org>; John Fastabend
> <john.fastabend@gmail.com>; Stanislav Fomichev <sdf@fomichev.me>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; bpf@vger.kernel.org=
;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Loktionov, Aleksandr
> <Aleksandr.Loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: do not configure xp=
s for
> XDP queues
> Importance: High
>=20
> On Mon, May 18, 2026 at 01:15:04PM +0200, Larysa Zaremba wrote:
> > netif_set_xps_queue() should not be called for an XDP Tx queue, since
> > such queues are not netdev-exposed. On systems with number of CPUs
> > >=3D64, on E610 adapter, netdev is configured with maximum number queue
> > pairs being 63 (due to MSI-X assignment), but configuring XDP results i=
n 64
> XDP queues.
> >
> > So, during XDP program load, when netif_set_xps_queue() is called for
> > the last XDP queue, we get a WARNING with a call trace and KASAN
> > report afterwards (if enabled).
> >
> > [ 2012.699800] WARNING: net/core/dev.c:2854 at
> > __netif_set_xps_queue+0x116a/0x1e40, CPU#36: xdpsock/103668
>=20
> ...
>=20
> >
> > Skip XPS configuration for XDP Tx queues.
> >
> > Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> > Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Patryk Holda <patryk.holda@intel.com>=A0


