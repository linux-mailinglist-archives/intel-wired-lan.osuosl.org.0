Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1E7616460
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 15:05:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB12F60B12;
	Wed,  2 Nov 2022 14:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB12F60B12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667397912;
	bh=jYg1XH0KA+ZGR0U90y4oVF9Zgi99lr4NPneYXPnKsIA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OrSct8zrgu58DXUSojMuYz8tXWxUGkYHFoLXPpZpTPoeS4aNYuUFkO2I+919HuIgo
	 PMnKJYotxBLODv5QDy8ij+UyFlFvXSshDIhDoofMG943QtBxjlnSz8Zt0/jhlFGwH4
	 lRYt7tSaBc4Cf6KU7/4FP6C/O8NlkJuMs9e/7Iq/zfxK2F0+2F3Ge+UWwkKiF1TVkt
	 N5JXw+35ikMm7UtGlnrA+EwRlbjJVNWXsRRf1KR0d9MlQchhEKW8ULT6OA5rWJD60O
	 ueuBtL5bQlK+quVIprPizbKM5uqsuhIcJL2D4lEr0T2D0aAqCBWgetdNlsP8nyqzwZ
	 IxXhgr/hb9Y9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRaemTvu72NN; Wed,  2 Nov 2022 14:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D255960AF4;
	Wed,  2 Nov 2022 14:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D255960AF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE4021BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 14:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A481840983
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 14:05:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A481840983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7t-IH1-Cdoi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 14:05:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE09F40168
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE09F40168
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 14:05:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="307026632"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="307026632"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:04:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="697818714"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="697818714"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2022 07:04:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 07:04:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 07:04:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 07:04:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 07:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aLQ52z+vnbJg/wegZMr0v6+qi1STPZdgVem8XgmCw0ddsvl9omhfhaVuwAoZG/sSQBbsv5S5FBdQEpkAU+tXs5KgHU3N0qjJGmLzl4ZrVGPgo8fLULW9Jzx4PDo6i2/5p/iuwQyStc68xf2/5YIM4nRbZtvjMiDpXkFirBzpcI+MRP9cp+wjXxzsqZk6eSDquHI46AYO+f70SF97QmyVYitkFpSOIuE7q21mqKapNRC3iNCdPN3Qfm2bbTTXuZxY2NnoOnA1qO11CSKmjyNwJHvexs+TeHOhYualCV3HXBt0NDbQzjcWBH5i5Jqov9mV+cbGVpbnSiY6U0EKbvOrKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wK12OjybudvLLyEwc0IOdEnLMEMYuJpz9a4OoXI5VDw=;
 b=S//7oz9IBgSl3UQa2IDUAr+TcJmKyRs47CRiIbvRuVtnFbWoDbg9eHTYn4fAJpnyXatdM+e6OO3SKHNucr0jQUw3FjMqcM5yxkenqCIYPObQNncSpmGP/DitimMyWtV1DUPQNdsllxSMBPRjMge1UoCR9KGlsXvpgEaOFdCqDPvrQFdhMNm7Ydv4XfdbeVqcpIvGJr6IyIaTrSjQKScWyTyWbD2Dmm2XOsuoPHNEVgOCZDAMxPxdNsxWfNsgLtCY4jjIwVMx0SVJV5H3VpRqEJVmR/nCQFwtOFPBHz/eJH13HQm/ZG0w6mTNHqoL4fXye4t8Zn7VrcEjUJTV627CCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by SN7PR11MB6922.namprd11.prod.outlook.com (2603:10b6:806:2a9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 14:04:44 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df%9]) with mapi id 15.20.5791.020; Wed, 2 Nov 2022
 14:04:44 +0000
From: "Staikov, Andrii" <andrii.staikov@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
Thread-Index: AQHY6EM2VsfjYhLROkCs68HiiBkZfq4g4/uAgAdRfrCAA1yDAIAAJVyQ
Date: Wed, 2 Nov 2022 14:04:43 +0000
Message-ID: <PH0PR11MB561148FC5F7A5E6AE10C1FA385399@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <20221026164445.56155-1-alexandr.lobakin@intel.com>
 <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
 <20221102115008.3067605-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221102115008.3067605-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5611:EE_|SN7PR11MB6922:EE_
x-ms-office365-filtering-correlation-id: b134a6bd-af6e-436c-7167-08dabcdb3177
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ezxXkZJuLNRxnSmZ87wgl2PHsl4NvcuTbH+rufJOS6uZqXwsJviw6hJgBDhTItdXjteg2V8BP5l78snmj8HNOwGX8ruzX1TYxB8aVFQTeMqFv7AheLFjX5kOWapUNFOHviqg0KjvwF73IReCmRkbg4rSfh02djwp59v5a/c6UyOZIDoxpYMVmPVGhRW5vGKpQ88akemsUlC5eRwjqTGhR+IATspLQRd39RNNyT2RyiFVcW/gDUEOw9Xhww/6aWPClf/G4VT7bga7UiXZ3bRi1tw3JbCTQzUznG2WlSwfIOGllyAeMjOUlG9wuLDcRBbhTYYstVR9mhkenwbJOsDF899fcLXwx3smqtZWVwdn62SxeqfqfuEGlZDJhIrkmXYX5CAlvLQ/j0U7tCBfKpvsXrx0umc0SjN9jZkWgsoBZxbA+b4cGmsVFMoEAVosSGDDKOELfMbT6pccGY5pYccINj+v4BA/6mFRusG5WgLq3jg4PKh5UFHTuNbkjeKD1XyzT8O36jVLfihvPhDpm88TYRizjTDbMJvF1NbijlwAnT/k4aT7f3Cd/bLPCDPDky0Ejoo5jxa5RKHsru3Xpv/9/KndZNx5OB/LYzbobie/FfmJ2h6gHnVhxoeqQLJCnap/fqDVDCjMMSEoDUmOa5GTHfpCZv0zKju8nFOY6zQyorA/drpyIIffvTkqXr2r02rtaLkrS7QV07pEPKL0ZLpFJDhG1jjPNi24LqwnDq+euMxgn6twuGulqfJIAUIqnU9x1qq7jRaf761jfGPJimHSNvRrFgGh7Kf9BFVaFPUjC7M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199015)(26005)(64756008)(33656002)(38070700005)(86362001)(38100700002)(122000001)(52536014)(6862004)(8936002)(5660300002)(66446008)(66476007)(9686003)(8676002)(83380400001)(66556008)(6636002)(82960400001)(107886003)(186003)(71200400001)(316002)(54906003)(478600001)(66946007)(2906002)(41300700001)(76116006)(7696005)(4326008)(55016003)(6506007)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tcBKuJ4IoM7lEPR0nkdpUuVXYOZPTkSB7eK//3fNgn+2nfvRwpGNCfJfUL+7?=
 =?us-ascii?Q?YWG5pyvsocAiMTF/cRbgyfye40lPHTSQNamtZedj+XYLd/x22sYG5dgxOMrb?=
 =?us-ascii?Q?eQsdinQSdU+6RJ0eTgS6TmtVml8ftt3cBorOPFa6mqV6qOVNKasZMivyeN+0?=
 =?us-ascii?Q?l2m6VUpEUwToMPxuBFKdpxSaAP9ZCSbKLUeGPK78RC9NPgMbBBge0ZF3OCfN?=
 =?us-ascii?Q?qZ3yiU2E7Kcixp3JBCCSUDREjCeoflrGNi5iBQiOcKNey2LE21mqZRrd/whU?=
 =?us-ascii?Q?QSZWMY5ouEmsIFRIM9esfUKTr2Y+i7n9oC3kAVpze1/HNn4e4bttFkyxMI+H?=
 =?us-ascii?Q?97B2PmR35wCfoW6BLrHIQct2MFRFJswT0FsKKDTu22JZn77YumnnNiJOHrTK?=
 =?us-ascii?Q?zkmFHQ/5ShoJCE9Trgu2erLbPYVjbOfy1/sK6mPM8JZ1uaKIpyyhWteJ48n+?=
 =?us-ascii?Q?LfEniHfLLz4WJM5gWKOBoR6pTBltIJQbofqSC9+LgmiEBc5qc+eWOfTPeSo0?=
 =?us-ascii?Q?KMahZu7C65U90DIr9ERKsy4Phf0UwUpcfWF1IsX8myKVZ2fg7qvwgLD2wBYw?=
 =?us-ascii?Q?ZB1X0TdKxhhYcSYEPoPQykoS0tGUrZ8rx6SW8pvdpAXburl9ZGyO6u27UQId?=
 =?us-ascii?Q?EMIClYToipKds7jYKZc8AeXYWRX9NzvenwWi9OYZ+RuHzpdtMrPS/2W6HF0D?=
 =?us-ascii?Q?Mj+iz3gVSjEJsNIelTHNRD0+ITdFLp3cZ8PPwgIoehjMPEKrGWexDzunjzV9?=
 =?us-ascii?Q?CJoTj4TSqhfe+txvwEVS134Xo+l8T2OGMzn80BGGSgxfVndUhMX/U5m4y8Fs?=
 =?us-ascii?Q?koELvrd5ZJMV9v60Y5MbZD5tzg2g4+AT8Ho97+mmzK9OFFSUeLY4UGVSMCFy?=
 =?us-ascii?Q?ae5j9uL6X1WdWnzo9bzexWS2M7lTofvAhvDoLq7+WVbwb8MGIpZa8r0uk45+?=
 =?us-ascii?Q?zGuCWek7ya19pumYbT7KNwtGGtppEgjOjEci1WxkqX8i4MyPnviYdF6lbNzh?=
 =?us-ascii?Q?HDQlOaElu3+sAlcrefsReQUkeJx59x/hpXROzBlblNdLljS+NKUB7Wu+cXdA?=
 =?us-ascii?Q?FQYTTFowrqqcSgJqr9Byg1eK/NBoQDTITxqRq6kseOg/b3+4pS60AyMRBCfN?=
 =?us-ascii?Q?VIeFFrKzdApNrJxdeREJ9QB/lN2sOTdeqCqW5QwCXc87tzL5id9mPbpBTGfb?=
 =?us-ascii?Q?tkUY9hQ/BUXh9QAFAbZKodJJXA0vDj8MMxwZuTiMJrlzDWwxSVXee3vRj1XT?=
 =?us-ascii?Q?HjcULL/ketE7bVUSp0aavY+LZKNh7UVGHTHrGsl4Xafg70H1iR7/k1zJb/0p?=
 =?us-ascii?Q?jc7kDcSPbEjjTWR8/RMOvPFInzuh6NYLllx7i+/6/e203iyPNhR69/XwMARC?=
 =?us-ascii?Q?rK/Xc9LILkpC6KU5tRersHZa7WWvzhnAGJghdDNBl0VLoIybIypdxLHE4Yvn?=
 =?us-ascii?Q?hp4sq5N4MJ+njkrn7cna2KgMcDXTBiUNZeAMRigd2/AFGe26IV0hwOcAYlTa?=
 =?us-ascii?Q?jRfrEKRlYlhm6D69l+ltxFwQamXlUEQxNfgVLTVN4P80qgH7MnkqD4ZZe/Kr?=
 =?us-ascii?Q?nQKId+A0oKazI3ZPXiF9aZ9nAi+rhLQ2Mn6/wt+d?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b134a6bd-af6e-436c-7167-08dabcdb3177
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 14:04:43.9649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hoIjTMmGj5MKj+1WWA0toyXh+dlBD1v3g29QDYmAdBum6CSaZ7kZJXcu/RP8dnCbc80d6ZRSHUaDIetv0rtXYEB8Sz0Su4Cg6x6ffhgC+GY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6922
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667397906; x=1698933906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cKKu3LYRqxr4rUE+mD7K9+lJLWHhZaDvBabv+gu+Uhw=;
 b=llVgAboGFvo+DUVb4qtiT59vaOSslq1Ac383hzAyJaqjhzFZ/xQP4R5C
 s/wzJjONA/e8zb0amNyjwNXPgExJef/jOAo6B3zpcG5HiNOMN4QKVowNH
 gj6EgH5ZbAoSQgEOzUuJgLMmtOgVjRnf1GRjccsCKmpGtXDY+Yn4R1Xdn
 wVj+Fz87L2UNX7jxHR66kw73sqESEuCAU5XATGxBWmwIvQ1BapujOq8WN
 w2IJU/8JDTcAlpcVe8ZyWpXnT7KvB2ORuIOdozo4ORW/yRbRLhLfuqPIw
 vs8mOAn59R8i80FgxChbJaIOQ13xq1U0iZhnra8Iz+pomWWMKPUaZq/+U
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=llVgAboG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> From: "Staikov, Andrii" <andrii.staikov@intel.com>
>> Date: Mon, 31 Oct 2022 08:30:59 +0000
>> 
>> >From: Andrii Staikov <andrii.staikov@intel.com>
>> >Date: Tue, 25 Oct 2022 09:27:05 +0200
>> >
>> >> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>
>[...]
>
>> >> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop
>> >> actions")
>> >> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
>> >> Change-type: DefectResolution
>
>Those two tags shouldn't be here BTW, only Fixes and SoBs.
>
>> >> Signed-off-by: Sylwester Dziedziuch 
>> >> <sylwesterx.dziedziuch@intel.com>
>> >> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
>> >> ---
>> >>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155
>> >> ++++++++++++++------
>> >>  1 file changed, 112 insertions(+), 43 deletions(-)
>> >
>> >[...]
>> >
>> >-	old_prog = xchg(&vsi->xdp_prog, prog);
>> >+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
>> >+		i40e_down(vsi);
>> >
>> >Please don't. Unconditional down-up was removed from i40e, we've made XDP hotswap in ice in our recent patch queue and now you're trying to effectively revert all that ._.
>> >You don't need any interface actions when there is a prog and you want to install a new one as well, just RCU the pointers and that's it.
>> >
>> 
>> Can you please elaborate on this. I am not an author of this commit so it's hard for me to grasp what you are talking about.
>> Are you suggestion just leaving old_prog = xchg(&vsi->xdp_prog, prog); instread of the part that was added?
>
>if (!!prog == !!old_prog), you shouldn't do any resets/reallocatiions/etc, please leave it just how it was before (when they were being done conditionally on (need_reset)).
>Otherwise, you'll kill prog hotswapping by trying to fix this splat, which would be a major regression.

Sorry, but it's still not clear for me what changes you are asking for.
In your email you are refering to this part only:
-	old_prog = xchg(&vsi->xdp_prog, prog);
+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
+		i40e_down(vsi);

Are you requesting reverting changes of the whole i40e_xdp_setup function or some specific ones related to (need_reset)?

>> 
>> >[...]
>> >
>> >> --
>> >> 2.25.1
>> >
>> >Thanks,
>> >Olek
>> >
>> 
>> Regards,
>> Staikov Andrii
>
>Thanks,
>Olek
>

Regards,
Staikov Andrii
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
