Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B2A777559
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 12:04:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C10341574;
	Thu, 10 Aug 2023 10:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C10341574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691661887;
	bh=wq+qLMJNc99D9PajJiRPn4h3uX2vYi85NdDOKOdM274=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=27gC1lKwbbToCcIcIkBHZXE+nZ8gZSPhtOhxkPiu20cuNDErqzxxAx8zODSVRGbUL
	 zstxIDi4mdapbyWLCCRTUXi9l3x3ExX7HqtAzm/5M+4ItFI/YBVQ2sfrSBYyu2OnZd
	 mbWi8FeYNpWaegjBkZspkU6SyrIz4NnA6u0Pz+1VaQgx8u7m3E6Mq/OPpzPJQFyXee
	 yW+UzHUuYNUv5hcDc0FySyeG8bs/CgT264jQuSL2MfRF/RMb3pLA1EzdcKTxMnGYk6
	 sQ9yxzkATS5hh/AQSxb3ywPjuOPbsgJWCCk7Uwo0DJWroBPTjT4Pe1nrYmpqBexqlF
	 Dyv4Ek15k+qAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMRqFWEaRqOr; Thu, 10 Aug 2023 10:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26EBB40472;
	Thu, 10 Aug 2023 10:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26EBB40472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDF731BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0D3E83BC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0D3E83BC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NlDqCbY7ZZad for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 10:04:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8637B83BBB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 10:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8637B83BBB
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="402320258"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="402320258"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 03:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="855878716"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="855878716"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 10 Aug 2023 03:04:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:04:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 03:04:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 03:04:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 03:04:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kflO0ph7E6LlhgXV97O9RJEm/MzKzGudhUc/sBOoqpCtxQHouHmwdiFtoaaeSubqfBLmFTemdLMl+KgYyDqosW5szLS+EsU8NQ7+Lw2BUklU37adufY7qmjjxOhvHkq1dcQn4EYD80VEJbDQ8htWkVqOn5xxHlCLqigAkoOuSDWcPGL5KwxhgeyxSTPaMco+LPtcEBaeMhTunr5b+eFVzlSwoCVtKwY47T5mcvO+EHyNSJGa8lY8213IH6nBS06H5kYPdONPzmqrSGqgOSq/v6WtRFO/Lgy2H2j7e4kEPCw+CTlxSolxeWsqu7byklX56isD219AdvoFT3DlaoYQIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99jfdKhfvP0ugd6kQZ2cGW9XLYIo1fKEYyf77dR9vN4=;
 b=oBACJEIePRv5PWCH8LmqrgfetHrQRJJwlWEhSHDdhpyTdieINcp4XU5XHkG4bH+ufvUEefN3FxIFfpb1Xdk4mF/7b2uuX41iFrvscd/pr984K4sBK9kSvsYYVrY4s4fJwx67MUniM9jXtahj/4LLL63y5Uq852d365upIfAb5Ifk6V+zoZwLUHKje033090MPmqX0NemLi3o4b++w+ca5gq4/wllf9Z4lll2Dwexrh+0TGWlGaOzZBwgMfm4+O0voRB67zMet9tIDUNU6dVAZRnuH7m5HaMvZCWw+ugY2gl3cTCf9MHbnDbvU65qkJW8BjBhehtcv3wzj1GXtZNHEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Thu, 10 Aug
 2023 10:04:33 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6652.028; Thu, 10 Aug 2023
 10:04:32 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_package_header
Thread-Index: AQHZxP70g5LC9RrrjECHun+dGiqgNa/jWX1g
Date: Thu, 10 Aug 2023 10:04:32 +0000
Message-ID: <BL0PR11MB31228C4730923B62FF0B0E6EBD13A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <768db2c3764a490118f6850d24f6e49998494b6c.1690938732.git.gustavoars@kernel.org>
In-Reply-To: <768db2c3764a490118f6850d24f6e49998494b6c.1690938732.git.gustavoars@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: 35d6fbab-b919-404e-63fb-08db998931a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zdyoChkAheZbOR+dCsdq6ZPGQmlqWLPaURoBwPSmtzxTc6vHZI5h/u0jhoiaPUbHRerDahTAvMu8qcfSvoBTtNuInPfYnTzeHakE2aJGIHnqNdRxgo45rLduYvr2o+sKyXahYs7DH2iCZ/UwRhzRNvh8vkjRiyPhDf/7nb+gkY5fzA8SKEXEeb5PkW83TihQtl7Zpy6bKXR/61Fnm5QZCOjgh43NAArUWdwly/vsN/e+CmsBSNG9kWANMS4n/FodCmacWtmnPTgEc+nSXdPU6s3s2LkYOpNhK+sSAHGXjMMPk/4nOHNa0T2Hiql5XYB2I57O09mYs59f8p/IUbUfcpIamm3zy7AGX59YxxgkampKIZnYPtI6r11yQH+54wJZj+lVB90/3RdEp9jpsrfpads8Ug8pryZZf+H+Gw+KgDcthb8+JTOLa7RotPUCHoGUkcbQdr8pRbu/vD0XVwCa0v5FmAyvf0TkPVo3ZNB8Pney+BVHTXV6vy3gM0ORkZNIVoUS3oPPCnVjiOuCjKNHrVQQv4AP1O16FOEY2KqqMgFpDoXNrfAxQpQgepb1Ww2Z4nj76C/Q6DslsynI/NKMddhgWmgTTNgC0VxTh8TidBo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(396003)(346002)(376002)(186006)(451199021)(1800799006)(83380400001)(55016003)(7696005)(110136005)(4326008)(5660300002)(52536014)(8936002)(64756008)(38100700002)(38070700005)(66446008)(8676002)(316002)(2906002)(54906003)(66476007)(66946007)(66556008)(76116006)(33656002)(86362001)(82960400001)(966005)(478600001)(122000001)(71200400001)(9686003)(41300700001)(55236004)(26005)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KStXlXKLmxdmQvZHZ7ddDZfqWa1UqaT5dE4pt9B6tL1qcPIJDhi8y++I/vbW?=
 =?us-ascii?Q?/dYGuzpkSgT24ZTKmiRe//4jzyDxvOuY5RZT70etfnJKTYSGibZa9oKb3pLo?=
 =?us-ascii?Q?yVoK/ydTzWKbSGd7tufiqTbT5GGblARfuBOOl55lQz+Y78vU9UCLjI2KrUga?=
 =?us-ascii?Q?yqcQgvktcaol3IT/7sFUznCqWrzW0MDAJlmEhdjYcLcR1Mk/YTSBpq9N6did?=
 =?us-ascii?Q?aWzmLEw/K6vacGncTBQ1MtDaVVDO7GZkEtgnd0gMbcpuIkYKKDFdV1UKDvW4?=
 =?us-ascii?Q?eNXTbWZJFj7OtuwRjxRVobuirt+U46JmVD1L+TactzIMr0RhvmCFKx5vXNl9?=
 =?us-ascii?Q?vqK6DhPNbzbqb96NPbxCEBurfTRdCzDDHwxmAC29QUW6eeM7qfBM7nNl4yUX?=
 =?us-ascii?Q?1hd9UKBUJgj+Y4mXhIE6tyXYX+S7oAbOSwNl5qRUuO6ROUU9rrQE426Q0mYD?=
 =?us-ascii?Q?u8AKTzi7jHqsfVpE9BOMD5wJ/DmqxunWr5fkLoJOjHIpQpJhQ9cUNww5MZdG?=
 =?us-ascii?Q?zzKYWyvaPoV7L0TmAFz6uQeXMJ/NbDzmrzthSH18xkycv1dKDRo/8E//evDj?=
 =?us-ascii?Q?5bhQRZrKrN6T9QWSF/Z3NVz3CS/gzsVgx0aR2p+5nHxVAnSJD2KNLn08onlx?=
 =?us-ascii?Q?+q9xOQ7h8lBsyPJuP4rJ+u+WqKT28NWhqIhC4J4PayBGDg8KHmvsDt3dlydM?=
 =?us-ascii?Q?ic4jXLg6CBszpkxbiogKAU2Gf2l8jo9MB0EhI308XmzMGQ573A4IrHZZVWlZ?=
 =?us-ascii?Q?WJb2tpyXtBUs9QOEIQGoWb+n8zsyVOaodYfucOJtl4ZQmGyGseHpvb6wtK9I?=
 =?us-ascii?Q?PuJGQANsR+4hPqFwfz/1dvAnQawCkKbwW0OZzz0M7T4ZSaQdyXYm+uCKPA4o?=
 =?us-ascii?Q?AcSkbVXH1M/lD0dEszjDjpSEGt38UwW7/CfLMPFoJL6Llc3IjNhtMJInfxky?=
 =?us-ascii?Q?MsnBlEp3/t/h0nejhTOKUD7VZURj0ct+u3LreBpkGH9wkY9P5D1A7syCrRIB?=
 =?us-ascii?Q?rrdaOTnOuepc0mm3Tb5+NBQAzxzp0+XHYaBLBlec3Z3rFrpUTeGvzedVA49R?=
 =?us-ascii?Q?y4C8OCX2STTEX9/xIhePxP44dovFFxtmQ6uWE6uSjvn4j4DcLcMZusOt9tCm?=
 =?us-ascii?Q?H6VIM2WbOlHwwCG4pQIpPb+VZrG5vEOwKevSgiLEDcdoQpOqeN35n29WmQzB?=
 =?us-ascii?Q?EpCNjq7h0PivxRG7RQ0nz2vY6XsYSZVP2+OZADb/MU4wqt0ooKvJRNPiFjTV?=
 =?us-ascii?Q?RJJAmO/zosBaJbbVroGN25IXCHlM6UPHHiqUEzYe9ERjMHEDvHyYETY8mg7Y?=
 =?us-ascii?Q?orgxb/041ViDg3kNhpQ4nSSoOXNverwK4TxEQHkRbNE3kmo7yIrmW9ntGqis?=
 =?us-ascii?Q?KHdYkgklkqpO2pg+Q6pWQK2Ysw2P06pFzkYWLBjnwPcmZ8SnbMWH7wTf1hIT?=
 =?us-ascii?Q?j3LDePa1t7yI7sUBSJXokkwiQjjkybGUa1N17+0xusnJ8GLr3MQHjHyzLAFT?=
 =?us-ascii?Q?6q3jyQZx47lpIeExUEP69+qCGDKvVd+m5X73NpO5NW8ZRUOfuc3wym6o2rc2?=
 =?us-ascii?Q?psUcoq7jKRvfkxWlugpJnSZtXhhlKfMkuDjOP5DLQE85zdHiN6EQ/bOw3edZ?=
 =?us-ascii?Q?/Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35d6fbab-b919-404e-63fb-08db998931a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2023 10:04:32.5230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G5KAtasfJIWYEIqF0jMS+J+9gJYuw0AUfYeGHyfX9EohRH1S13Sg7jFF3cfORoiMAGECSM7MOzeYdeEatJ5vOGpo9/D+sxcD8Kir10RE21A6GqH9MT9ip6DCfH1ZiIuD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691661879; x=1723197879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OGFFbEuvbah1FtS/+aaJuobo+RAsPpVq7FXwQwMGiHY=;
 b=LXYYukcArxp8zJ1ECyWp5mpClD+MsaSUrKPoI6Ur+GdJ2V5BVH7HC9+s
 4B8kZ14pDR9m/okvknZK74N8+Q3NnJmdqlBuf9FNxkx0NCDJvm9b4Ajwz
 SMRx4ZpdpzVUgQNuNH8FQdnnD9QFeRwobM3RV0H7hhI6wbOPAZz/hW1JD
 W/JbiqH62kabVald76PElA/Ug2ezmxwfKonzp7oScvnzekwoHhXn7WH/N
 B3ZmGFLgbzzMFSNLAh2DCJBtureEY6dRZwQQWCIUm4kESciZZTVzXDw9Z
 bp6ggl9hEaNwC3CmTB0bkWx9fEiFTYcZFVmxVUavOLRG/fyyigFHIMPfe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LXYYukcA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_package_header
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Gustavo A. R. Silva
> Sent: Wednesday, August 2, 2023 10:36 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: linux-hardening@vger.kernel.org; netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; Gustavo A. R. Silva <gustavoars@kernel.org>
> Subject: [Intel-wired-lan] [PATCH 1/4][next] i40e: Replace one-element array with flex-array member in struct i40e_package_header
>
> One-element and zero-length arrays are deprecated. So, replace one-element array in struct i40e_package_header with flexible-array member.
> 
> The `+ sizeof(u32)` adjustments ensure that there are no differences in binary output.
>
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c  | 4 ++--  drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
> 2 files changed, 3 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
