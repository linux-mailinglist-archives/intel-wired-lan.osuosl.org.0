Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Q93Jyu+KWp6cgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 21:42:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D099F66C8D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 21:42:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=C4K+r9sZ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06CAE60BAE;
	Wed, 10 Jun 2026 19:42:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ChOnb01N_qMM; Wed, 10 Jun 2026 19:42:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55CA260BAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781120550;
	bh=x7qIe00VFIM7Zrb83Nbf7GlVckulIVFssDf4v3f/pZs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C4K+r9sZTDmsdi8ofkQDCOtCaL4BqnteeYcRHKbGC1/Qnrkti+peuigC9ByMgj61D
	 atPiSF1HSMonJ5zW4ZUH5ePnqFouUTo4aMO/MF2ZZFCpGSB9mkRYuQZG3hfGreL29c
	 d3xfDuFVHR6J+7cS+qNqbcfnmP9mQgXybA6Pc+Bk5SR1ANyaicpBJ6bgm6Z4DHDvjn
	 7aHHSbh+kHVVBPY0EcEYpPdQLBRtDP3xmKN/DDTVDx2aumRGMD7zb2m+Eu6frGswTh
	 eP/0eyPeCueXD5E95om4gBw44Xz/8TKh1KF2rNyVIjgXmSSn+f5E1IfyxsRafRFcLB
	 Y3xnCg+QNdpmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55CA260BAF;
	Wed, 10 Jun 2026 19:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8995025E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 19:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86F3E40E51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 19:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ShUkIN2vIS9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 19:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B59A540E4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B59A540E4E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B59A540E4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 19:42:27 +0000 (UTC)
X-CSE-ConnectionGUID: QplKqOxcQhup63ijFTfODg==
X-CSE-MsgGUID: +O1zzxIBQqWJmHr/jRRVew==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81058380"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81058380"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 12:42:27 -0700
X-CSE-ConnectionGUID: rSSgURzWT5yWsgHy0MK3lA==
X-CSE-MsgGUID: YCHQrI9zTeaGx6E9a1GM8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246124274"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 12:42:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 12:42:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 12:42:25 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 12:42:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x1ejAj4iDjCYlTTOpjpOSAdGuS3ScNE5po92NYbS1dEHX1ZGQ1OXE0RzmUpVFGww0k/hPlDwSQS7cVYYisUYSbwmjO5gRw4x4yTnVEbCwE5ffPcfb3v2FQYK40oXwFeq431tQRJnF0HL5AeZGsift2qAdOE8eMD87xWzIR4Xo2s5xpfWgE2qMvRtYA49Jpal8uiUd4wPHv2KsVQo/eN5KVjqduwr9dGVj6S1RbHKyDY9bWOtZZDFsXuo5RG+jMsveNxYmfXfP3TKaSfEfOq8miwhykaAv3VPgYShMF+yKqF/E/y4Mgr3b0M4uFUtV/bh4Yrml11eTkxZVL6tUyIPeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7qIe00VFIM7Zrb83Nbf7GlVckulIVFssDf4v3f/pZs=;
 b=hQCQDvdy5k0G5GhGJ4JbuLf5UcT+70/tGI+lZG1sz6FDULq+DFxMUc0NEs7iC3pismKL8UmgUYAxRKDnaUdezyClUQYgb1rqaFeRJ04Ojyjv6cAguTj5+BaRGZCHy7bemHyiNhxR02Sit1pJWxIk3B3dRMefqLw2+LANIjWM3e8/0DEi5yrU2ZjbvrAg1ptMCju5n+40/8/4WptIJYgppNObDXsOEvngpWafBJgqwfgAqoAtBXioqhdsErB6QJT7IulVNnVlnLt/743R+7cQrUtUmdgP0qAVl+KELPztW/5ntCjkP3twihEMba874AGELlnZ8d9U5b0leRApxRRAQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SN7PR11MB7091.namprd11.prod.outlook.com (2603:10b6:806:29a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Wed, 10 Jun
 2026 19:42:20 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 19:42:20 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Prathosh.Satish@microchip.com"
 <Prathosh.Satish@microchip.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v14 net-next 04/13] dpll: send delete notification before
 unregister in on-pin rollback
Thread-Index: AQHc9qx1WAOADYOsh0eBk268hx/sxrY03vWAgADwD5CAAOECgA==
Date: Wed, 10 Jun 2026 19:42:19 +0000
Message-ID: <IA1PR11MB62193E85F10A8ADD43343946921A2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-5-grzegorz.nitka@intel.com>
 <CH0PR11MB539452AD940A13941ED1E6D69B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
 <IA1PR11MB621956E9C0B9EBBD32C8A332921D2@IA1PR11MB6219.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB621956E9C0B9EBBD32C8A332921D2@IA1PR11MB6219.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SN7PR11MB7091:EE_
x-ms-office365-filtering-correlation-id: 21f5546a-7637-4ac5-5b08-08dec72862a3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|7416014|376014|366016|22082099003|18002099003|6133799003|56012099006|11063799006|4143699003|38070700021;
x-microsoft-antispam-message-info: a1e7NewNC6fStH17btnq6gAyTN2sXcEJ16XfHI8vO2kZUP0uFWEQ6+8gX1/qpeGBe9YoOFUeOTf4GWORmxTAXV4+BzrGmlrl3cvQX829LhqSwM064eJhAZbAMIZZI+6oZuXFZ4vpZO/+syYd02l4rbOrv3SnkTyiBNOQyVqajnAWVykH65flaQpCgGDaDvBLL2P/M18NYSWUUJrtWmbxB1DfA6MQSj8rQH+ObAdOBPGnV/SeHtQ13nDxn4hnBJHdKWCc1d0KxgBG60kRTflXGmLGUy3i4lBpgGVQBFxISBhOGZSBzOjpwrvDh2bRmZNLCLAuURWnxzPip4cLdqUiBxzy+8nTRQP0jlpLbYZw/CKcuWWc8RE2rsbLZOQNQzgqlT92Dp2LJBr9bdargEic1G1xe2vizIeRd/hVeHJdBzEmN5DQtCfaozAWil5ZDnWrPFRnuxuDugV7s7yabldsYvtpZ/2Bw8Dl6Wvr0hrmsMle2oP3Wi6MDctj0+KctUdLbZvqouDBWb829kC/V/ErQQhimqSzl7qcIjBtH8BLjJG2+Gxm65oR7p9QD+iJU/xmqQQLxmZWy3y28e8A7gzuupupYQm1FY5rwmKXSeuF1F+xmZtQmxgTf5RbZ2+Gow+tou3LTj39xYzy5ZGTKHbVKTU3qD/xrFDsEVTypjdt5HWWb21VgqB3VpXrrv3jrRuF5y/NqZmjbENw5gp5g9hav9Gsym0mpuLeJDbf4biJUdeWfF0DJyJp7ta3zvqP6WnJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cu8hTaZxFz4goggKMQTMjQjimZd+Ei+nQJ+hJy58oyFVhphpw4xG26ZtwvEE?=
 =?us-ascii?Q?TSFVsxSGS3JY5pC1/5lGLsGPmndAQefhL3HK+H+HXAEvR7FfIj+WVyMSxhEk?=
 =?us-ascii?Q?1GgQNowJI9JKJ/ThwEyI04rT4W3f1iw6sx+pHvyUCEr0WxxV/t0as0daAmPa?=
 =?us-ascii?Q?Ymd+MXAGzBSgb6SLD55VJYlg6qs3cMPWAjsUovZxmYpIIQSELfYV5W88Y3KU?=
 =?us-ascii?Q?M5J1YsbzSd95K2yH9UO+CpPizQOe+SxVMQHnkty3Cd/4TljVwMxLpH0f1kgX?=
 =?us-ascii?Q?lx89ntLbFqYv+uO3d1rJESK2izNFV/83dcKFr9C/B6xMshDnJrRYQ4oVaYLt?=
 =?us-ascii?Q?J7cQlZe2hZuQaKxdmVwsHWSUyDcQGxGynEdyHEEB1IDJZ50BPQ3iJrBpRp5V?=
 =?us-ascii?Q?l2gPYSaabf7j0OQ837IDBija6SsmwiytjPEY9n9rUbie5vw+fA9+ftyMkSvs?=
 =?us-ascii?Q?5+qfXpah8Vacsa1kXHmA9Dt5sMIj7xyouk4Wm2zs4kahFf46yuK4vwa3SXjN?=
 =?us-ascii?Q?67F95CuGzJimDDfynexegkmc13KFjSBRn9pyg8pIZHf8Iz7jaM74REz0Cfvl?=
 =?us-ascii?Q?viNM2WT0ZCOV5Ib8+wzDDPCk2YWOvOdac003QD8ksxCWB56IyZotPbnGrytn?=
 =?us-ascii?Q?g4jloyvu68zO4K4NFAlt2U1nNuPZ4OSp2VhwxZAv8wj+zEqCBQV8mcDdSn7/?=
 =?us-ascii?Q?ps3HbMmGT64g5knBNMsgE3M3NhgoGjBdu0Wv4jddzSs+yylBHBDe+2rTsoRp?=
 =?us-ascii?Q?xakdCrNTS0KaKnDu4IHd7uh/z4Q/cFJCnSggCUSLIYzksX9wA+W2ILsQ/2Zt?=
 =?us-ascii?Q?77aGn8O+/UXFMhopZ/odLwtOiYIVaU4i51Y+Ft8Z5Rkjc4RDB1s4Ob1hUvuT?=
 =?us-ascii?Q?ZRgHW8KiDT6Qhf6k8xx4bSHxgbhPFtIkvygMTi1CahY76jmWg4X8MF536Yz6?=
 =?us-ascii?Q?LfR7grK5mYC/gfDntTw/dyDHhi1LfUPAANl+TI89PRehVo8aYk08i79rcfJ1?=
 =?us-ascii?Q?yB63Ffa4BH+VFnTRvPohJbTvLPAOXu8m3KXQQin8x5KnqU86WC+qLyBbQKm0?=
 =?us-ascii?Q?seWiN7bwv1ooOFZb58mILdUrENKXZ/BBhq6mQsC9ZY+QfVppFj9oXxTgr/l+?=
 =?us-ascii?Q?bxNMgaXIfFHstLn6mNeLClh3zEe6geSgazw3hgKtXGfhTngSJ3YPxriSmD95?=
 =?us-ascii?Q?YErEd1E3Dwm/OfzABZh2r1sGhkjKVgo+VehtA9eczcCe4QA/egz7aE86vkVz?=
 =?us-ascii?Q?Pt+x7PgI6LLwFs5S7e7xF7vvHRF7JbnyfgXqgPyvBt4VrKuW8Iv5i0jwGA4R?=
 =?us-ascii?Q?5v5SvUfCl7yNlcaqQblCwLOE3BT0rGd/T+UXBs4tQQmGSHVDlS5R54Hqlbpu?=
 =?us-ascii?Q?DB0wwtQI6LJl5mDDgaebl2stsGdSmox/aHIt7hfrJAlxXRCOeDJ0xS990LTt?=
 =?us-ascii?Q?xOm6rlBBka16hDZWXCZpBqdGqEN2S0k1FOcOTylVh5dQuXai7PuBBY9y5Lr9?=
 =?us-ascii?Q?tZw9FM1Yqqw65FpEGWJrq8c73jUqw1LL0OZIe+rQg7UwChp5f8LenIrN3lbb?=
 =?us-ascii?Q?afoxFFv34JHkeWaU4KmjQOQVOOFHpWda/wYh0MVPAe3DyJXq1NedIgCcAqPA?=
 =?us-ascii?Q?D9i4hO0v34ij3nuiD1NHQHt9UmxK2DqVFENcOnfKanAPRQi2H0I0QgdWsa/h?=
 =?us-ascii?Q?gyf+LZ8APicpU6DKvEm8dFb7NuScJnGOBTtbO01x+oQfPRh18C2qEkKAkyII?=
 =?us-ascii?Q?mwMvKiJYoQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: n3sEQXrT60kxIcj7FNPuyQsLkQLGYhFmxbcbbzqDHZVzmnXCH7b4JmPQK1kljKDnzD7XWK4dzh0vnyLa1y8gteouP/0KS67f/LZHoIQ6gcEAyAgfuKxH5OzT/cMH/0xeUUvK6qQK0dlt9f23pW3AfewqlQZybd0EIMgQp4D1TeII42gTNG51pkD3T0QBtU9gsA0SX2p4Mk604nyGbC9mlVjRvCGDQDv+TAHZX54gnky+oL8hSmFTMVaZ2ejkQ5TCQFOzUoj4rcHkEYugAoafUB5g8cpMQ7v48r/22sDUc1ZE5eU+QMCpg9S360RzkOX/Lo7LMLf4GMhwSOl9IIuh8g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f5546a-7637-4ac5-5b08-08dec72862a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2026 19:42:20.0325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tzV61h/cjKgsYzyY4e6GggRk0KBP4z7zM7YYULz+93M+TceWwfY4NTpQqGBnJzp5m4iQTUNb/k6RqImYaRwUNe9Wq/H1C/+9QoK+KB5s8Ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781120548; x=1812656548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q/0EVvTDwtl6Vt+tzAIWa6wwjCJGfBOMQFCyiSVO3f8=;
 b=OxdOw9qUwwnuv907o4fvPnJbH6tzcxIh1g1I57ufX3KDbD0KhVCAfL7g
 W3wr5NMSwziSVHizgnb8wuEcbdVtXmwMkhk4QH2W5u2b9wygPpsbzh+fB
 R7sBg5cqzjhF3FhFoOCyQ44TLGw1bhhh99TeQIZU/ViLbdN9tghNfCrn8
 V3bIx+PSjqKdnq8NadmrJaih2vbaNr/37INWp51Oil3KmD7wl+10Zb49P
 J9HJdpbGtdv5iTy7P2kY3ADJKHXkOZIW9zCgCEULqXNcIcAeA+RB0HS6P
 iaW/y+ktyIbl7EMoNILnSY3PiGH2A2CAE4ja5U7h8DNGVDv8tXEk75HIj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OxdOw9qU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send delete
 notification before unregister in on-pin rollback
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:arkadiusz.kubalewski@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,intel.com:from_mime,intel.com:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,microchip.com:email,resnulli.us:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D099F66C8D1



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Nitka, Grzegorz
> Sent: Tuesday, June 9, 2026 9:10 AM
> To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>;
> netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org;
> andrew+netdev@lunn.ch; intel-wired-lan@lists.osuosl.org;
> horms@kernel.org; Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 04/13] dpll: send dele=
te
> notification before unregister in on-pin rollback
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> > Sent: Monday, June 8, 2026 6:45 PM
> > To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Oro=
s,
> Petr
> > <poros@redhat.com>; richardcochran@gmail.com;
> andrew+netdev@lunn.ch;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> > Ivan <ivecera@redhat.com>; jiri@resnulli.us; vadim.fedorenko@linux.dev;
> > donald.hunter@gmail.com; horms@kernel.org; pabeni@redhat.com;
> > kuba@kernel.org; davem@davemloft.net; edumazet@google.com
> > Subject: RE: [PATCH v14 net-next 04/13] dpll: send delete notification
> before
> > unregister in on-pin rollback
> >
> > >From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> > >Sent: Sunday, June 7, 2026 8:31 PM
> > >
> > >The rollback path in dpll_pin_on_pin_register() called
> > >__dpll_pin_unregister() before dpll_pin_delete_ntf(). When the
> > >unregister dropped the pin's last DPLL reference it cleared the
> > >DPLL_REGISTERED mark in dpll_pin_xa, so the subsequent
> > >dpll_pin_event_send() failed dpll_pin_available() and aborted with
> > >-ENODEV. As a result userspace was never notified of the rollback
> > >deletion and remained out of sync with the kernel.
> > >
> > >Send the delete notification first, matching the order used by
> > >dpll_pin_unregister() and dpll_pin_on_pin_unregister().
> > >
> > >Fixes: 9d71b54b65b1 ("dpll: netlink: Add DPLL framework base functions=
")
> > >Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > >---
> > > drivers/dpll/dpll_core.c | 2 +-
> > > 1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > >diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> > >index cea7e2be2cbc..80195f3a84f3 100644
> > >--- a/drivers/dpll/dpll_core.c
> > >+++ b/drivers/dpll/dpll_core.c
> > >@@ -1007,9 +1007,9 @@ int dpll_pin_on_pin_register(struct dpll_pin
> > >*parent, struct dpll_pin *pin,
> > > dpll_unregister:
> > > 	xa_for_each(&parent->dpll_refs, i, ref)
> > > 		if (i < stop) {
> > >+			dpll_pin_delete_ntf(pin);
> > > 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
> > > 					      parent);
> > >-			dpll_pin_delete_ntf(pin);
> >
> > Hey Grzegorz,
> >
> > Since patch 7/13 this is already part of __dpll_pin_unregister ?
> > The call should be removed at all? Please make sure all calls to
> > __dpll_pin_unregister(..) are aware of that, also maybe better to
> > put this all related to one patch?
> >
>=20
> Yes, I think this patch is a good candidate to squash with 7/13 (with
> proper commit message edit).
> Same 'Fixes' tag and both touch notifications fix.
>=20
> Thanks
>=20
> Grzegorz

Hi Arek,

I revisited your comment, from the perspective of redundant calls
to dpll_pin_delete_ntf after patch 7/13 is applied to.
Yes, there are still 2 "redundant" calls to dpll_pin_delete_ntf on top of _=
_dpll_pin_unregister.
I'm going to send v14 with this fix and reordered commits in the patchset (=
7/13 moved up).

Regards

Grzegorz

> > > 		}
> > > 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
> > > unlock:
> > >--
> > >2.39.3

