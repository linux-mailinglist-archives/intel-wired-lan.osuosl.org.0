Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE747170DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:42:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50A37822A8;
	Tue, 30 May 2023 22:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50A37822A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685486575;
	bh=CLYPnyLHJAQTi0Do4bVxN87ql6yex2Nx/pLmkOuOEYs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TAFvCA3JCHSDUqs8pufQ7uzlEOWvPSC1yxf1b781lFhwB8vAJaN1VNlb/SsKNS9yy
	 zjLLcPtrWJ+6oNYt3uyVAyf+JLsQnZEo5mNRYY0kPjO3PGk9FTUHSWS5oNpNfCF0YS
	 yjugat5Q6NntOjQAJZlqOsgQnvmDV5CgV2+guQ+Ka0gQ/ipClfWRGX23JKurkJxnaB
	 kJLMEJi+wa/4cxeW1KHyk4lf0A/RLZPtbZzMR9Su7CeFXV6wD7mJ4kfHPBi2vjfF/i
	 F0xvbixWA7LW4rJ1udb25KU204xwVdeT+FJV6aXleRrPEhJF3p26OBVvwYCLf61OBZ
	 JIYDHaBCZeo6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8L_DbEyG_a6; Tue, 30 May 2023 22:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4963822A0;
	Tue, 30 May 2023 22:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4963822A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CC7A1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E611822A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E611822A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjUaf3ZjR0D5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F25D82287
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F25D82287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:42:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="441423784"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="441423784"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="830953991"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="830953991"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 30 May 2023 15:42:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:42:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:42:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:42:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jT57rbMTUHgJBV8/BUI8WhRIeD/XbkpJJoWV/L2Z4i1YGYb320d8BpLtYZAarR9QrOaCYuUx8UIavUp8ivrHV6e2mpfSd/pJoOz1RMOvWyTgzXTBRWDk2pS3F6xmPNkgddnv+JZKuEDZrbjjdfndUJ3Mc1huvNMelT573A1fapcaK7aRAfxr1Mjeosr51CjlTfxY3tNDfJqvmohz+kS8RqL/Af4P22MRBb7O023ODoLqb4QpPW4V7eCnQdsbprQNu3haTiLUhqIBZ+SvfT2y7mvLlQywVhxWex1CTCZu0EbJpkM5uRlc7PyCy6IorCa+AlRQm3nRjqVmakO1QBOaWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=og7pP3GaXAIc2jH72parCSZqvm9F2s/qVit3yMxBXxQ=;
 b=n1hE6NYeK4pPnFhetSh1xI446FMTFQ3TpXHWgvBfqiCrcP8piIobZ3/ZeQfYToO+4+DXihVHUSu6rRGGUvodOMYWHQWKGN5qOsWVDtdUqeRTwGkhannJg9I1fsBMctU8nn6H4XrP50URljARD5vnGfNyvbAGKMf+omKRz8Y7y1GW7+hcYeQVzWFmDNQMRw7GH1zGb+9QRyzEmOZKxvo6+7a4X43Ot4CC+ctxf9eKi5w1J2nlnnKhMWWnEIV2RLcg2u6hLHAFGkxQvEMt3Dqw996SsFE9aVjj9jq5hOfrDr/o2e/xY4EoAuY6hJNInfuvo4s1U+K7Y2DWYh9HYzpczQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 22:42:41 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:42:41 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 03/15] idpf: add controlq
 init and reset checks
Thread-Index: AQHZjQ1H/uPKi7nUEUek05CJwy1vgK9zdb4Q
Date: Tue, 30 May 2023 22:42:41 +0000
Message-ID: <MW4PR11MB591161F7ACEBE1CCAC704910BA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-4-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-4-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM6PR11MB4612:EE_
x-ms-office365-filtering-correlation-id: d7677e6b-0567-40e5-0295-08db615f2d2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7LALFoefwpBuH9YIlgNNA/rqRQpSKzEKXns4Mzf2xgtqUylAyi6lLM9HjnsdOihiDcvXuJtddkB20CuDCm65SahXBKhc+mXS5wBN+ouVxT3cvQNmKhyNzNQXAcp7RCFy9Exju7aUdCscs4Tirl/yaQWwWMuuF8HZALjP5w4Jk/gBE0zk3qArmgyNGAwe6qXLy+xEtHlwAAbyyzf4QEJYl1eyZcG5bf9hoMdijugeZkPPAd7XvqzUrh1cPdaQTDCFjCGOPLZvN9gE9mLfiy0hsHFVqpSEdV11zCcXBIBH7qBXfqZTfy5yI+PlDkvrfuEuan5TwkgK3PFZ6D+IVA/EWgFArmANfOgR/J+QS6VmLozWQdjZbovXrZbH58iFvsBgW9CChX6EnablEbwY0Ige6LQdx8cYJlq3Jxx2zjsbTM0l3z8NUWDCgiFPe7xzpIYclow7KJ/AC60ky9XDXX3CjDUwfdb2nM3ZQXgDY5yQVGa32eUlySAgMc1k95Xj0SlNbtxWKF0EMrqz6RCfgoXbYuAn32ViYb6xdhUjmS3y223zNqfk+DQV/twAxu+HQgOERK2RhetcImOwofZtpgrQU7HXk6QXuVODCHp+hEWAZsLoFsk9opFCCCMjE5GNIbj0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199021)(38100700002)(186003)(53546011)(41300700001)(83380400001)(6506007)(9686003)(26005)(7696005)(478600001)(71200400001)(110136005)(54906003)(66946007)(4326008)(64756008)(66476007)(76116006)(66446008)(55016003)(316002)(82960400001)(122000001)(66556008)(7416002)(52536014)(8936002)(8676002)(33656002)(2906002)(38070700005)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DDIXNyAZkZY3VRP2b0Im2FUWJf+2tahO83bEBj8QBgKL5S8SABfshtaiVudO?=
 =?us-ascii?Q?ZfQdoq0OQzPCe348z/n+O7WIRq5IYF8iDoQQDG5uMlROcoyU5HE/v6Y8E2E+?=
 =?us-ascii?Q?B6kTnBLRk93XmMIa91TlWh98Ig4LkUTUP80axCoNQM2PvQgtl7ZjXLQHd8Fj?=
 =?us-ascii?Q?JiH7omu6deTr7UW2xxgrePPzYQvDngDeBZyH3LwIsUGfsECWO59XwOC/TrN3?=
 =?us-ascii?Q?uSnsYdRv26zF5XOgUbEaAPxL5iYpRM0wm+212k+uOBQfs2oM/zihzfuQi/67?=
 =?us-ascii?Q?NHSDMmt+N9kai6DZVZZ1SN32Mq/sBNdhzex0urCYjSUO/y5XQeatj69TOy4n?=
 =?us-ascii?Q?MiWndutmOj0QKug4XasdfmjGYjSa++lhEO5yzYVqKEKihhQKCT4OQtDLI4m7?=
 =?us-ascii?Q?2vjrt5K97H73TjAFE3wDHiaPiU6JYg6i965jqM+5z9WSpuXtver04ZjsKF9S?=
 =?us-ascii?Q?HVPg7tud+slq+yNZ9TnwD8DugU44wPduYFKVm0ev+KDTFK98QWK5AmhN6Aas?=
 =?us-ascii?Q?OGo+UDzaH5e5GGfpXPIuHbTow36Jrb9YMN+XeRXm7HOFlq6r/Cc86xS973Bt?=
 =?us-ascii?Q?p3p+m2+PcV7FMtiT18yRuNqgWYYToyprPilFQC/Gep6KCsfrWM2NxIy12PW1?=
 =?us-ascii?Q?c7L2wMdjYk8miwQqs8l2nfeHs5oQvy/3pPybDa0eGk/PBaGFUu1tGwdd7yZt?=
 =?us-ascii?Q?XOm3zr/9cIc+gc2T6iYhOqSI7+xxrpEi1+596B2JIAW4glQC+kzyPhVUbe7I?=
 =?us-ascii?Q?5md0ns9J5LEuyVX+ZSuvqsXnLi5Cqvkz2S2svwQhJX/JD3As2jhYDiinnvCy?=
 =?us-ascii?Q?DiHwqG7vy/Z77AVdigaIs8sRHnvniVSfDv5q012FHGFtWHY9XPJ3kPBm7oMT?=
 =?us-ascii?Q?lot70GvKqxZ+qCWOAsKP1CdGMaN6C5U14U9npLwBzDpdW8v7mIO/14BJ0WAQ?=
 =?us-ascii?Q?4JLFbBdVCJODvIY3gViacD+irb3325aDrSYDTuP8NQzTKNChODsj8Q52u2qD?=
 =?us-ascii?Q?ZAXuLwlh6dl++YKRiMV8KF+zX7sdWROa/jaV5IuXf0418t1Eyi+uEMW/RQFM?=
 =?us-ascii?Q?u61HjvdaGfWTeDYOWN+CRyLJIJ8JThuorqAHX5y/b7LS/Dc3RpI1+PzY0hkG?=
 =?us-ascii?Q?8+novXbuX1Vx47UnSUQ8W8IlJVcaNYHjVf/ZbMAcCe86p0Oct/tfnGiWcut7?=
 =?us-ascii?Q?Q7uVSgaioewHCq18Np7QNKu7aG1xpbfGbOHPrvstq+Qo8TRT8Bj2wwa428z9?=
 =?us-ascii?Q?AKsrD1PMYxOHNrVxlgk/2PXu/s4wCyyeqaA+NElucnQnehjXlLFqAKAIFCzk?=
 =?us-ascii?Q?vewh1kporKVuWscaj8T92FWObG+QMhim3Hi6w3WVC/uXvZWoEEUHTbSebTo0?=
 =?us-ascii?Q?512WTToVxeD3hd6OeAuqdi4wK++BEG2wCAOpmccpd1B5fJCFHd2bANIhPTM0?=
 =?us-ascii?Q?+AvxEbn6/0/ocpOco9pHe53FwSN6siSzLu/rtdaLCe6BxbD0JIJ9OoxM0DG7?=
 =?us-ascii?Q?TUD26e407HbzI9ZQl+iLAeElHLo6U0Y2fDsAnKXWDeihDb0C16nK2G2NEC3L?=
 =?us-ascii?Q?OL1yeTN8XhojPb210Q+3JMjenKFXok8xbV/5YZg8djHb5uU/3pSqOGYMwLUZ?=
 =?us-ascii?Q?ig=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7677e6b-0567-40e5-0295-08db615f2d2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:42:41.0741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OjxElgQvFQsYKlHqd2lZWEc2xWquCOJFdEi/tKHaIsp3UXCdH2eg9c1sckKGKm5pLkcBQnevaWg/URaHr5SSli6ReVaod53mQCjNWAJD0ds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685486568; x=1717022568;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vqhfk7PypbfPmlCrFkbfLkwk0W7gD9O2ew7xBu0wW8M=;
 b=abZPyOHnnL+P6upuPBpKTOF8Bel8z1S9cy5b0tUL58cJYPSvsmaYowtV
 5smtIuopI30XivUTyRJ7Hk9Q3Bnv8+owtWSiFsvyZJAd2B14j0UB8P1GA
 xxAsfNOEP11h1vMTNYbhhyJ5jen9amS5WncVKMqvRFIlBknZDDvnq5Riu
 iVr8w7HYlFtaHTVB53Fjrgpp2rzEAcCHUthxwu923VZLQ/7WYWKj8aj0v
 m46xrDOx8IxXgL1QeoumZQ3QaKoV14XBVP3JurFkqJ4isYO6yeGV8NtbH
 p0WSwDnQX4cgoQFx/7Ddd+5VKRjFlFXAg8FJg9eFijjtyA1jGCCju225m
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=abZPyOHn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 03/15] idpf: add controlq
 init and reset checks
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>, "Bhatnagar,
 Shailendra" <shailendra.bhatnagar@intel.com>,
 "leon@kernel.org" <leon@kernel.org>, "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: willemb@google.com; pabeni@redhat.com; Bhatnagar, Shailendra
> <shailendra.bhatnagar@intel.com>; leon@kernel.org; mst@redhat.com;
> simon.horman@corigine.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; stephen@networkplumber.org;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> Burra, Phani R <phani.r.burra@intel.com>; decot@google.com;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 03/15] idpf: add controlq init
> and reset checks
> 
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> At the end of the probe, initialize and schedule the event workqueue.
> It calls the hard reset function where reset checks are done to find
> if the device is out of the reset. Control queue initialization and
> the necessary control queue support is added.
> 
> Introduce function pointers for the register operations which are
> different between PF and VF devices.
> 
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/Makefile      |   8 +-
>  drivers/net/ethernet/intel/idpf/idpf.h        |  95 +++
>  .../net/ethernet/intel/idpf/idpf_controlq.c   | 641 ++++++++++++++++++
>  .../net/ethernet/intel/idpf/idpf_controlq.h   | 117 ++++
>  .../ethernet/intel/idpf/idpf_controlq_api.h   | 169 +++++
>  .../ethernet/intel/idpf/idpf_controlq_setup.c | 175 +++++
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  89 +++
>  .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  70 ++
>  .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  65 ++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 145 ++++
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  51 +-
>  drivers/net/ethernet/intel/idpf/idpf_mem.h    |  20 +
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  86 +++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 128 ++++
>  14 files changed, 1857 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
