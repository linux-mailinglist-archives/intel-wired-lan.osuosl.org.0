Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A426576321C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 11:30:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ADCF611F3;
	Wed, 26 Jul 2023 09:30:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ADCF611F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690363846;
	bh=lrFlRb6pFd2bz4qRPnug7ET1ZsVU4qQhjbqOxAW5YC4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FpsRmde+SKfVmRD4MmJcyJZ7w2w3gq2NEOynpSiCd06LHkor1FiJR+ck9+PWFTRP5
	 4I8YsjLrWf4B+P/ioPefIskWhuHAmNDUOh0qtDtFGYX1oEDHNtt8PLK9mwPvJSijar
	 pbTs7HeCtgDVA/wO7TqeJaapMgNBgjiJOgTTfpPGzP2KIxIm5l2ChQoer+mxguYN4/
	 18m07EzUGey28cHcf9+68rUYuEuETZ8yR6rWkxrPwUay5tPKmV+9DIT43ZcDSvZZfW
	 N7gZhL0/teGqLQBepz+YCpJz2MTK6eBVt79eCpWum1a790PytRc7/7gC/UAlhwfoLU
	 d/yJOZDafmfow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TvpOPI1_6NFd; Wed, 26 Jul 2023 09:30:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48C3361074;
	Wed, 26 Jul 2023 09:30:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48C3361074
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC8161BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 09:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B364661074
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 09:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B364661074
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mrEYioyls6J8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 09:30:39 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 09:30:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9A1F608B7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9A1F608B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 09:30:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="357964692"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="357964692"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 02:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="756149809"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="756149809"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 26 Jul 2023 02:23:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 02:23:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 02:23:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 02:23:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 02:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ut0/e3n9iBW49TLAx5EnhKV9TN5ma8FKdU7q65kXzGSZayau/USVWAiR4uf06eovTd4pk+rBljQRQTZDYOCb4hrorFlCjcF5ASEGFx/XVV9DEJ0JX3W/Q0kIF75aSDxX904mSDQGxwNnPPOgX9nKxY9B+lc+6RUUhDdE0jZKJ8n3M/SlVdjRFEmdpNT/noWhgdRsPb/yigO1FvPzMq1wa6fS6J86GJCMoZxH878GPE2IVfWnWsPqovLuyaWWBK7706zbhfJOctr1rgmXjZd3KG0TOaARoyuNBq0bKBtCvgSXHRtHLyt6c4Z7uI5Y8dVgnSIiuCn9DMkm/6TzvRtIAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HkOmxrdqvPShkM4IEXXH98T/4tAq4BzVbZLWMOTyBeE=;
 b=MA7IdqYQaVTwNIduuTKrqaynifRRanyvx5iqYWpjaki2fHunNJlt5URDRx8XNYGLKhiaVz6UcUgb+omKnynxdspl1mHE0odw3v+7ndLL0d8By+677uCDqgn2byuTRoPuo0U0gc/LRgbXVr+EqT2LGXUIbqdUcfE9zvoPYWgo/gNvGgxydy/Q/7MLbD4T19r5Pwni7x1JDKSiyb9X3vguUWnO2K0y8GIOBMFNZbBeychNky4SKZ8XquwVJBgKXvxX5cRhb73ASL7GbCDsHvJ6+Sqbrf/rfE0b+DLyN8EgkN7uQ+jb0/26TLYkTIJs0PadaOXtIYBcqp38mwQdxNmskg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 CO1PR11MB4803.namprd11.prod.outlook.com (2603:10b6:303:95::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.29; Wed, 26 Jul 2023 09:23:27 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::401b:360a:f15f:b0e4]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::401b:360a:f15f:b0e4%7]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 09:23:26 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <simon.horman@corigine.com>
Thread-Topic: [PATCH iwl-next v1] i40e: Clear stats after deleting tc
Thread-Index: AQHZvhRGBi21Fyqo0Umc+9c2rVJmsa/KaekAgAFfebA=
Date: Wed, 26 Jul 2023 09:23:26 +0000
Message-ID: <DM6PR11MB2731B889B8EA3B61F9CE615FF000A@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20230724094319.57359-1-jedrzej.jagielski@intel.com>
 <ZL++xYriOfc2V6Fb@corigine.com>
In-Reply-To: <ZL++xYriOfc2V6Fb@corigine.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|CO1PR11MB4803:EE_
x-ms-office365-filtering-correlation-id: 4cdb4eeb-a965-4c01-aaa9-08db8db9f75e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 97FsXjlfUp1OckzekjE0T46am6yhx9NEy4x2U9iD8zlJ0O/Ry0WAremVnPHUSoVpghPEp+JIx1xO1ldWny/hJoFrrVTCtQlSPl1fNuxMvz+pi15KmGHModro4RFnHqt78XVjYXSMLOrgmLIHvJO0kKqGZ2FullZRO0lvAEkgbnjvZm+Qm71VSIQAoVeoYh8yy8svLHjsoWaNnb9eSlTIo0k9LxzgwhiWg2p21NUeZDUcYC/XKCz7SKZcp/2tpukkOG5pb9BJzNSzPq5FPAuB64sTpnv+ZM+NvgvFPU+KR4LaBnJmYmCwdBx9mCjcQHQ837DG1UtFwQ1DpZZKCEqU6hTlcBgNu1OAjrrXyahxfUP5uDiSNGRLFKZpZ6hETkDWCCagu2UDAgXE21uJi4STUTcuafJ2ILZWx9eHTOtV0rDu4KgotGdNYaooCgXuWKxSFgoq+sbBgV6/DslxT9vRhvH0i7eWazLgCC1aSgqOUl7e04mZaxaaapSARp1/DXmJ7wRO2GxEv6BtWIRu0zMl4Lu/51DGsJYwdfk+2W72RWPmiGaMUHhdwDjsXXY39Ra4HtGEW5Y3ZhvsGzMbKnD8NU10fJrFKZUmnWIFiXvTnGHNs/roWsHlquJefDlQbCC7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(136003)(396003)(366004)(451199021)(2906002)(83380400001)(38070700005)(71200400001)(6506007)(76116006)(26005)(186003)(7696005)(9686003)(66946007)(54906003)(478600001)(33656002)(55016003)(86362001)(122000001)(38100700002)(6916009)(64756008)(66446008)(66476007)(66556008)(4326008)(8676002)(8936002)(316002)(41300700001)(82960400001)(52536014)(5660300002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FdJWLFr6DwH9saFeJ4/a13YiLI/Vdu1kiyNoCpYGb8byvGkyCtcOqZGtDzkI?=
 =?us-ascii?Q?lTAvmUHVCDz+f4+YPz2ca4O9M+Ld58pdi8+dNqW4/bQATIU5GnLgTC0VKqX3?=
 =?us-ascii?Q?FOUHBf2pn827Siv8Q68uox2Lr57pyTh0pX4qGPNoKy8AWfUOXkrAao+O9127?=
 =?us-ascii?Q?l547oInkcMmLPobR07kQTb6iKHZRrYENdXdwKyZcKLKrTQu7S7fnr9PcpaCA?=
 =?us-ascii?Q?OjdqT0vIwMYb0HRax1bnUpJU6mNESBf9maeTU7rimcpR9e6DYfppT3AiiWxK?=
 =?us-ascii?Q?E0Zbr79nA/pB0DPKZ7cAHGFnJkN3VZwxHCOfAofjnzvkDXEeUDqYpgLV8G7U?=
 =?us-ascii?Q?4xG3kBJlQrhm2Sl/IWCB5kxibEhiJjC1uMBbggS7GL661X7R3nP6KkcSw6lZ?=
 =?us-ascii?Q?3YOtUSoJZUWsndlEF/8YjJxKQxbwlZJXIeFDYgXpFFaLNM8jnGuYIiMZDkl3?=
 =?us-ascii?Q?bqdSTBFJt5scB07ji72h1B6i6xessiuWFFeSKA6e+KgnPS6lUX7MO0d/rgHx?=
 =?us-ascii?Q?w0amlmnqkmPlDQY8aLRu/U5cK22yPt0qOrMVIs8BWajkKsFF0lKmQOHW6kV2?=
 =?us-ascii?Q?PVKuAnEe7Wsr2o9x4g81Uh617NFodkpFpc493akDOTVu1Z65Wu0SM9u+XiSN?=
 =?us-ascii?Q?uPCmLaTwWNfUTH5Dpz0Vvllbcp0RLftBl9WJQ2tFdAGNq8PiHREwcyfiUt0f?=
 =?us-ascii?Q?v7KmFLXvUUNe13KUXwX5Sx95hooYWeKZSST1ZeX2e8v3d+pC2TexAj/SO45l?=
 =?us-ascii?Q?9dgMYlQTqDhQiqRKCA90WDDCZ+/7lvmJtfS+2jwzywmKm2w1auiO1EaA4171?=
 =?us-ascii?Q?9pH+yJxhj8F1bkXnenDWv/MOt+/32cTCKmRWFzbmdditPKYQreOdSpHfQX1l?=
 =?us-ascii?Q?BqjOxuxEK5atV1PRuaF4glCBMMIBmXewiMoT8fDHOVhYhFdjWBAOiCGkQ3p2?=
 =?us-ascii?Q?zJ2OFL31QVgE1tP7GbZ3vhdma4mdMLGLw/aELKE+F4pfUQQ2RpAvfYa/q7ta?=
 =?us-ascii?Q?nsifQcj1IFnTD5aTCv6Jgt4jwaRpElg2Vayw4GZxoxd0l2CjhXJTaWyR4Bat?=
 =?us-ascii?Q?OyGMLdHeDR4gnt4E9O/jvnxpys1uZhenAaDlg5mY9n12z7kz2RjVax7+3xuH?=
 =?us-ascii?Q?NIyL9ikwdQ2OVOqvQFCrJ7qpDxQJnQng61D4eI/gCIM65zpPT+R1ritnu3lk?=
 =?us-ascii?Q?K4gZu/ApIJD+K2ST6HkHSkPORXs/nhi184TFC6jCGQ0XXR5s+/hFinz8bzBf?=
 =?us-ascii?Q?b5XhEigB9GO8I/se6d2WhO4pDZHeys+RZxyP+eqYTL8p/vf3icDFfCYSRm/S?=
 =?us-ascii?Q?IfGWIJ5jZ66qSOluBNGBgijsViesE1KZwBW7Ndjo5Bnyl+vnN8zXpdgVWjYF?=
 =?us-ascii?Q?7cPW8Dmvh2vNNN5ns7/Xw9eSiQDYFwIp2QWYl0g2/164pJm7XPfZH0eAdgqC?=
 =?us-ascii?Q?DYs6l0+JRUpoDYXg6T6Ts6vmReKY8DaxzJaOAdXko/yTvkCTCC5V8QyzFNI2?=
 =?us-ascii?Q?bN1/Due9CdO7wMPudCa6zsVA8sX5ysPonY+fLW43q3+o0Z76lnSzSCYdoHtZ?=
 =?us-ascii?Q?FyBOFXOeCZET85o33Ks6W8zNEZ2/h6VyHPDK9bWI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cdb4eeb-a965-4c01-aaa9-08db8db9f75e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 09:23:26.1178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sbutPsqfRA8pH72O+VMEehK8tU1v7kmj0lJevRIzVETXF67ZRukteLxKcw0LCnTNlQHupo+Lqtmmj3sRyOeawtFaKUyNRKdXv/7NKmvFYjE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4803
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690363838; x=1721899838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WaAl7hMfUnmOGe9JEh/l9/NRH7oPB+X3B4KDAe8wGBw=;
 b=NEUwzFqrBfktzy6tgrWsl06zVii7JjFxwW9IFeRz1QT1rhF0Lg1mthiY
 lS8YKJe/S1WAjjtcmemIDkdWxwvNOAtr5BCHaVLAyefRXHh6T1dwztZVG
 0MG1zSO64PGLHEJ6Au6PQhUP/8cQnWEuWGCA7JhSCFNbs7PBz2Pbq2UxK
 SvBABu0B0UUv3UMhRQuHszfi3z4dN/ElysFx0eZ+cIzSN5eHA9121s4wh
 4oIn0R0ZPEuWS7Nuxd4Fm6vPQMjC7D9RlwmHfs11bmU3GO9uXN2r2xeld
 dutCz3Ji1FHqRV8rxRUuw/c27dljEHz+rJ8GlM0qhxO0JUawV3aqV+wiC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NEUwzFqr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <simon.horman@corigine.com> 
Sent: Tue, 25 July 2023 14:25
>On Mon, Jul 24, 2023 at 11:43:19AM +0200, Jedrzej Jagielski wrote:
>> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> 
>> There was an issue with ethtool stats that
>> have not been cleared after tc had been deleted.
>
>I think it would be good to elaborate on what the issue is,
>perhaps with an example. I think this should be added to
>the patch description.

OK, I will provide more details

>
>> Fix this by resetting stats after deleting tc
>> by calling i40e_vsi_reset_stats() function after
>> distroying qdisc.
>> 
>> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index 29ad1797adce..6f604bfe7437 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
>>  
>>  	/* Update the netdev TC setup */
>>  	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
>> +
>> +	/* After distroying qdisc reset all stats of the vsi */
>
>nit: distroying -> destroying

Thanks for catching that

>
>> +	if (!vsi->mqprio_qopt.qopt.hw)
>> +		i40e_vsi_reset_stats(vsi);
>> +
>>  out:
>>  	return ret;
>>  }
>
>-- 
>pw-bot: changes-requested
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
