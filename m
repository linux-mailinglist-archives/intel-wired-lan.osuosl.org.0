Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E07486DC34
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 08:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4932041D9D;
	Fri,  1 Mar 2024 07:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDAzMpjX8YGt; Fri,  1 Mar 2024 07:41:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CAFB41C10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709278868;
	bh=y5Mdctw+U5o+Ah+R1MvOSu02ChBafb2WNMkY/jObTpQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E6mCv+3IWQJawobak1F8q36sMxGnU55Oz9fTxrr65h2wA/k5oIGhMziAxmjz1o1U3
	 xdCvRZ5BTg7xkZRSzbVNJjo0r0MMRuHjjYSc4EkbhkbrjU/4KMrfTcX7hVHrWeMxry
	 uU+Gq4wadSECX5j5TeMF9qvvrM1PH4GapBV5/rpXxPfDYC5Dya+ankjQn9DvZujReW
	 wDs/zMnA2cdshIhBXrF/+ov38VqKo56FbSs8pVg9pJZ8TdYJWccYkSBk7yGQZ3INAI
	 t86sE6KFL3biasu4LP+IhK/w5ESrptGJQPE/bWqEt+8v6KvRKzxXaJ9vFzaVDtj85L
	 VzdQfM8UJNMkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CAFB41C10;
	Fri,  1 Mar 2024 07:41:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47AF31BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40D08607CE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mv54qWVzXuD4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 07:41:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7104E607CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7104E607CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7104E607CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 07:41:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3975917"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="3975917"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:41:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="8179607"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 23:41:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 23:41:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 23:41:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 23:41:01 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 23:41:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kM1Utw/suuat4TnyJ7lEPjkaqX47pC95XsqSOMVhJ3oLpe4sWUVLAaC2taseeJzkghiZ7omHRxrVdhbpfSSIVcZzG5FibymltbOG+hpWFIOmmrQT/k2+NQO0/llLPfel5q+FLQ7T3QyekLSv56qr9TIhylXbbsMd5eMsGRORE6Jyxsi/loWdws2D4PtTCj6mew9gLUcdH1VeM6jtMh43L+cAyOc2yZ9azr7ZztCRhAHF9kKJPXb4RFjtPJ6ku0QGaKsaJBadKx3WbKPo5lPY/gXvvz0+wLd57mK9l1nwc9ABVl981tQmAFUG5MQ7+eqLQWs6q5BPmAky6N3qyAH2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y5Mdctw+U5o+Ah+R1MvOSu02ChBafb2WNMkY/jObTpQ=;
 b=e+8VvI0ICL9GpIY9pqGdx3qgtRw9c/vAUiwNcbm2Zw/e9VZRpl6LRnYeaj136AlrI+MzDuHDOva0z3K0N8w17OyQFUK4RXhYOP/i11PNejv0RKg6zRFItf4uvB1PXiL73wG+KY0rkKJZ8DX2bc81qOdYWKPgDDSA6I17GA18foZcIOfMKWeN0myHcVnUsEPjfRmtOTKoZNOE3G4/5U2jlAp9jE4saGvmtCi5JcBujo2aPMQ0i3JKXVnLhAgVEhqieqJEPpEmZxeU2eQNOqBPHWnn4zNI+9w6RKWMTJ1eaB8lZkrX2pmszoLMDBwgfSplOFUQaijOu2XuI/ErimIsRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Fri, 1 Mar
 2024 07:40:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.015; Fri, 1 Mar 2024
 07:40:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Takeru Hayasaka <hayatake396@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 2/2] ice: Implement RSS
 settings for GTP using ethtool
Thread-Index: AQHaXVfxNlxjus0Tx0SYG0iVr+F/ZLEinIdg
Date: Fri, 1 Mar 2024 07:40:53 +0000
Message-ID: <CYYPR11MB84298E5D5B9656DD240F4472BD5E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <20240212020403.1639030-2-hayatake396@gmail.com>
In-Reply-To: <20240212020403.1639030-2-hayatake396@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB5215:EE_
x-ms-office365-filtering-correlation-id: dd5b4671-712c-499b-7a1c-08dc39c2eca3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SQaYTzyfAvJSiqGKU14J75tB3KyF1PbxF1gafgAoaHQO9kJCMpdP9Xs66BoDlIIvdEGqPnKBEAa8NKAvq66b9sDXkHEwr0elqO19r0WeUnaGj/rXNsW3QOhgzEnjUMJxKr8gk1BnxmoBitQy+EIVyRItkODb9SDwCfIVe0dEwslT9K2fSusHr27Evh0dexsNs1nVHuW2QLhyyrq6pq1DEFpHUS0SDaUW2Fz0kOyJhIMiZltAP3OfO/Nf6wgw2Dctw0dv/JAnhg+BQwq5uExofVWavz+xbagRlR3u2z9YnXAcesZXQQ5PnJ1fUaIC1dw6tz9546EUtpmvvyn2B6+30hM+PoUh0Ea6hckz3NhPMQZcz2SrzKZxvQbUcMu2ybGfMXnY4sf/d1lwfQAYEKyhFMTnBna5g/xThsURHqYVnsZ2hi7EgWxfguY1936910SnD6YtVbMs3wvofZH7SKhfm6ICA9eQrICWVimCNBtRW9fanoE36gPOwP5yPRPuBOLdlsOyHmal/d9ZK0kO+3HfuPLpcD74mWMiAc1s1VCDOuPWgc6SftSySWEQeQDuF+k9dDVnM03MqEyY92dXiPCml0AtJfURfr/GOGfuztZxwnLzLRqOaLa+DVfTrKNrRNSyc2Dks3BRnh8POps9+bQ4EPRY7NiYhOL/Po/QuJqSJxr5CVtK5LxBaStUrsZaKH32knoGe0QOyaVstbSf/NIQAYX1Rs3XOm9V2zaAvFkRing=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009)(921011); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U+hAJFeh6HOeY/W8W1gRgymT93kCSp35ZXWc0G+H8fU4vR055JCi2sO/xZPC?=
 =?us-ascii?Q?SeVbLGccDDi+Ah0Lbb6RQb7vLa0cSGa/fQzuJRrUaRroXui3KQhGZ3WfCWfI?=
 =?us-ascii?Q?TQ4lDGTweXUhC6oSAzuUUrO7WPmm7gyfWxsSOko+6/irHEnjbCAPO2ysQTWE?=
 =?us-ascii?Q?ylH0RbDJML1oZDwt8BO4uy3QUZtHZvMgx/NtTB8u+MolkGXGUE3Gdq/wmtlo?=
 =?us-ascii?Q?0SHxm9gYaeo/6oxtNSH3haNFXr/WHSJyUqexzbw7O9EckD2CJhEKPeXrxF1l?=
 =?us-ascii?Q?GbPO/bowLbsdU200gGXa9d+GRY5igBFqmEE5G1MuwDkh01sjjxSpm+Y5XP7l?=
 =?us-ascii?Q?21JFXvhuhhdglJH2MteIFMY5sPaVoDb5vQiK1hHv7PTFbegPZFZuPXZdxmMK?=
 =?us-ascii?Q?i0eML90LHxT8TcsSvDWyntGBLLnXoWEmcZPtdSAssuqSASI5/MKJFF1tq/wP?=
 =?us-ascii?Q?zSwylv+M0N/2FXz8i/5SafPKLLoVH0CSurjzxl5LA3f1fiWZNRQZ9VLVX2MA?=
 =?us-ascii?Q?bYccySaFYJr5E5j7rQ1sxaSWakc5Cz0TT92SudgOq97rfzzMitReiPDG00yO?=
 =?us-ascii?Q?LfFcTldSMqrfRKuQhgmckfH+lHK+VJFISzzNUy4ZZltheoXNo505Ukyc/2+v?=
 =?us-ascii?Q?0ZpAzLDc/9OCuKozLjG5/SUP/W84PrpgAqCeTSFrL+CAaodFURqonuvSjNOo?=
 =?us-ascii?Q?qNv7O44UJDJdwJqrzDlw1LzSWRt09C+KO0V1Cf7beiiaYiOiaT+ukpmvJeBp?=
 =?us-ascii?Q?JU8zYQuqv0YUu1B/YMGsbUqUaELPznHKfiI255F2fEcrvxssUBO7G7Ogj2Yc?=
 =?us-ascii?Q?fC15XGT3vbBDG7MQtEV9cbLlbxDlJT3qjTkoaFJNMhdF5Va7lHyI8EQCGnn6?=
 =?us-ascii?Q?tnJflEqfSDRtxEK4vfhS+imUfXixlUrcAgxbfGl0qyv+i/OsWnwlzleZu+Sx?=
 =?us-ascii?Q?SKy0JCvXw/9TazbbX4SHgC5Fyqh74Bkru5lIXrY2nLct/Ol9/5cs9N9LoGzx?=
 =?us-ascii?Q?sNP5lppdCCn5aacEVyy13NpBb7txjI336fZQtpgLHYzDYoYB0SFj0LzpFX6e?=
 =?us-ascii?Q?IiCieer6rNX7f+Ure14qVVzvgB3oKN8xhsVmPMvcDcpkqTJk9ojLW0SOJep1?=
 =?us-ascii?Q?IDA1LhjdNY9cDcjKQ5UOqReJ8Yj51BKw8BnpXYwuakDBiMEFKmGW+hMBFqt+?=
 =?us-ascii?Q?ECjK5pIIOg+BMPwxPH8+61MfSYDi0SOXwK5W3PZuEf261MVeMazdpJLLmy21?=
 =?us-ascii?Q?PJsorSSxJ7YW4wZxwkYK5m6/zse1pX3AxT9+NifWppYslFqJYaBOToHSpsxy?=
 =?us-ascii?Q?eGwvhpM5LQkxX+Rwe5mARWIZA86KtKw2dYsyYFWNfucLks9tluv8aRP7Zlhp?=
 =?us-ascii?Q?ZlAsLrwW3cWEQvQGh0aQPBQO2qQc+LX9IlcGFp6BLcsdt/Y8ao5B/vVpJUiX?=
 =?us-ascii?Q?0/AB+Xqw7xKh+NCbuuxJao6wdxIoC9r0O3fiqTjhcO4FsLfnp5P/aSRvqlpF?=
 =?us-ascii?Q?dCfS2AFTGac2bcV+YFtbdeKeGXmqTrgnOJMu5gAs7j5uJAKe7qy1x1IikYEp?=
 =?us-ascii?Q?BtBUHWupMFbxeJR55QLFJDY6bawroRly7YddENFAcAZTAYg8nbBLiMZoj+VI?=
 =?us-ascii?Q?9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd5b4671-712c-499b-7a1c-08dc39c2eca3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 07:40:53.6051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EG0aCGdDA3MVk3/miB9boWB2dneP/CFnvfNSXil5CWJX/tZDuK07UrAZ9mrMZWM2u22ps+lmpQcM0G25Ug8OcDmxJGLFLQ3uJhNugtjfcVdidhJv0pBHdrVukh+jvDT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709278863; x=1740814863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XYjQtS3h8quRXnlyQKCzMjdfuLJOLR9oj3iJ+zl81AU=;
 b=Jdy9Nw5nOBpc3vOdGmIVlz+gX2CudB+T8nyk/5AiTapXyXVJUEoa3uSH
 LvjKK84yiMRq7zEzO8M+/a+XPIhvybbwTcU2wUtm+zl9plt0pVdbCv56a
 uXZ/WPx93G5hB1Gk0/CiZTw3zDsj3PvwqGXUHVvO6aZCTBNUug3Zk4Q+A
 CkEku1o7r16GaHvLVr12vYMLuOHlGZOWSNHvUugYVZJGufxzm3sSU7u7y
 mr0rdKw77RexAHya44QWdG4Vx1zjaZ8zFdAd5mHc/D1x5ac23rslqxjEI
 /vblA4Dzg61zi5CaSt9hzZ7LaJ2ny9Ulz5FjWI8WuxrcogW7JKqZRgqek
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jdy9Nw5n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 2/2] ice: Implement RSS
 settings for GTP using ethtool
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "mailhol.vincent@wanadoo.fr" <mailhol.vincent@wanadoo.fr>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
akeru Hayasaka
> Sent: Monday, February 12, 2024 7:34 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Duma=
zet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <p=
abeni@redhat.com>; Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org; vladimir.oltean@nxp.com; linux-kernel@vger=
.kernel.org; laforge@gnumonks.org; Marcin Szycik <marcin.szycik@linux.intel=
.com>; intel-wired-lan@lists.osuosl.org; Takeru Hayasaka <hayatake396@gmail=
.com>; netdev@vger.kernel.org; mailhol.vincent@wanadoo.fr
> Subject: [Intel-wired-lan] [PATCH net-next v8 2/2] ice: Implement RSS set=
tings for GTP using ethtool
>
> Following the addition of new GTP RSS hash options to ethtool.h, this pat=
ch
> implements the corresponding RSS settings for GTP packets in the Intel ic=
e
> driver. It enables users to configure RSS for GTP-U and GTP-C traffic ove=
r IPv4
> and IPv6, utilizing the newly defined hash options.
>
> The implementation covers the handling of gtpu(4|6), gtpc(4|6), gtpc(4|6)=
t,
> gtpu(4|6)e, gtpu(4|6)u, and gtpu(4|6)d traffic, providing enhanced load
> distribution for GTP traffic across multiple processing units.
>
> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  .../device_drivers/ethernet/intel/ice.rst     | 21 ++++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 82 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     | 31 +++++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 37 +++++++++
>  4 files changed, 162 insertions(+), 9 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

