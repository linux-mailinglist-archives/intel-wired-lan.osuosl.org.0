Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C603783919
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 07:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81BFA61147;
	Tue, 22 Aug 2023 05:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81BFA61147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692681120;
	bh=U/22fLG2Th7UZWcvdMqzl71UglHsQViPvID9RAqx/MY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BNmfMOOiI4n4RgPVQcYMgrbZWqRd24z0s0QAYaIV8kVxaiU9nx2KTR8MAJmUiXdU/
	 7Md9NtirvlyJrhZ24f+Y0eRt5MRVXuiU7DbfbUNr8mICIB1P4XphFXrqiNT7lDpOvn
	 BNPeqBJ+v9ONA6TKbcXHKi8e6dqJ5eRpDNOG4Uy76v2KpgFrN/5XRthMibLz3O0GgO
	 hJqYki+Z7xL6EvmrR0mVh8O4dNErdUFGELRjqaD2vWpJVqpusK6nKSSWfAUuiDNELa
	 Olv2QCW3O99ay3w8j/QSJWgCwgA50ZlhraLJObrLNJFKK8hw/v2JaZ4NrCcw2KpWYy
	 +9y62A/Ukz9bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csgVK40p-8MM; Tue, 22 Aug 2023 05:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 362DA6113C;
	Tue, 22 Aug 2023 05:11:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 362DA6113C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73D441BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 05:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B8A140320
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 05:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B8A140320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPtjyKuYoF72 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 05:11:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0C14400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 05:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0C14400C5
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377534167"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="377534167"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 22:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850458988"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="850458988"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 22:11:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 22:11:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 22:11:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 22:11:49 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 22:11:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXOjcnpqFV+lb9ZyM9reGLof4L9K/f6/j7jFwgO3qP2p0eq9vscNQUGBsn/3EqBIxunuPmzIW6HsiOS3F5J0uDv+rGyr9E5oAjOrJfIDo+QOKCOMeCxvEKh+t1cdcdo+hjI1lnL6MsatxxTiq+qrYBYbHSYbA8eBtVRXKKXzUwXqQCE0NP8j8U5bYxNGN/yEga/K/nUMv2MsSnihNRe2xBRGsz/QfmcMO7V4f4ibREdnyz2k+/kfM/S4rENEqfkLVz4J4b8XaRB23sk+quRlGao9+tdbKRnFcgY+XRy7drB+Vu8Xu/loxJ72hhyZzSezdySYPnpJ8go4wt38Gcabeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+2meLy0UKVnR2bbpP4Zq0Pn6U1f+2rSA0O2vAgwlMLI=;
 b=QAXQ14AHBVIeDlxh8r+51aRyAs1BtIq1oqrBBpeYItbwY17jXF3/r36F+9R+KQ+tqPH2ENJEjZ99bsOr4XJqNEwT9y1YQ85bzKTtR/K/BIP5STPvTQiIKyQJYSqbq4M+fk8hUidh92x+Eupxlo2LTKiigVJQHX+aJHce16X01hTRs/8bPsbuvrmssEB2pYMJ1gKzjcB4iEVcpy+XPizR1rV9owvZRd8mE2Gqpa06bMztj97qDwG8pYVu2ew5x+U5fCYzftF6rz7tTcF7Y05S7Ly15mC28DMGyXBqtABGfUng0so6cEvycnIOr+6tq0AegiKPb4yWbnmzc+Tfv4AoeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by SA0PR11MB4590.namprd11.prod.outlook.com (2603:10b6:806:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 05:11:47 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::c477:5ec7:d71:6d87]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::c477:5ec7:d71:6d87%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 05:11:46 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Clear stats after
 deleting tc
Thread-Index: AQHZw7dF0ejHmi/QB0y2lo8fuZpPeq/15dkg
Date: Tue, 22 Aug 2023 05:11:45 +0000
Message-ID: <MN2PR11MB361498329F247F8932A1A7998E1FA@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20230731135218.10051-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20230731135218.10051-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|SA0PR11MB4590:EE_
x-ms-office365-filtering-correlation-id: ec94067a-ea8c-4e3b-1c69-08dba2ce4806
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xKAQVT619gaYaznOCvPOwD3f87nbqVkPbGIGGoIRu5OPRbf5scu9qCYslMQURxo+tYLGUL2R3wGJuwAeEOPX0TygGirsHwTJu/AZdpndeJ3I7rbjI9vvz/bbaNAiC7uO2GGvrPXDlbjZtcUgH5CdFNGvHTy7eF79PBj01r8UZEfMREM2xO5JJ8XobtN1hp7SI9BbjvOIFG994eEU/4UNJFUA5VAkMQpM9GcehXxsJvsQ6QoLRjTryhNs4B6COdYMC8jUNQGrH1hUQAzhv00nxOXf4ATuKQmrtRhlEi3fwa9rKdq9TVjC1wF7a4edAgchzkmOvZYuiolJWQd09eit7x7o1rF2Wv8QdDhXrCEOiWwPL4N+725f5s1jscT8/42s3ZumnbQ0KEsccBvigVtZk6W+9LzRvgj7rU11JGo9zpW/k06W8bH4ZLnh+AUp0KBXUlJwSYK3Of3vjU6U3HIb/fXq5JTLxVIRYBCpyTlB/kWJAROUcRKgrH+g4myfatEvOEevHA1KyuKIhsAiZ70HGMC8TTMXQmF99+5oXenaYyQ8m9A3rGAYfUomSkbFjXGq6KSLpACtPhBKU3HnQIVGfcYHVPX/4/jpD3gP6Wrg8L9ycOk8XeDSzhrQ5GAIneND
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(376002)(346002)(39860400002)(451199024)(186009)(1800799009)(9686003)(55016003)(6506007)(41300700001)(7696005)(53546011)(33656002)(26005)(86362001)(83380400001)(52536014)(5660300002)(2906002)(107886003)(122000001)(38070700005)(38100700002)(82960400001)(8676002)(8936002)(4326008)(71200400001)(66556008)(66946007)(76116006)(64756008)(66476007)(66446008)(6916009)(316002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4SsinJkco3k6pYmgaUqIs2eRG8us0I9NAIgvFtsAFcVEc+Tx6Fe76uwTJGe6?=
 =?us-ascii?Q?Gnk2+Iu0zCRfGN8gw3fYpqEV7caZRFDXIwsohvOV7HqWn7hSbJloPeXn6p0o?=
 =?us-ascii?Q?lksCWv4gCbl9w+qgdk5kTKstvpV6IzYc3ZfOQAjDbPGugSbaCdI6SNe0gQKG?=
 =?us-ascii?Q?KZBcKKZmY4gSywMa2xljAcnuaNyk1eFzwhLapfsEoy1wiUF4eqEnP2wdQ8/9?=
 =?us-ascii?Q?PrW9DTxe9LiGMev07AYd18ep3tbgIyndG4dmvwqjb/3ls1+xfFIJV0yy2ziQ?=
 =?us-ascii?Q?BUxQXEM3SXXC382816qBrsXsYmW2TxgdnHnXH4xNPHarfMauTUaku3XIxtem?=
 =?us-ascii?Q?f1f51EIgnIzd+OxOxgyCcO6LL5u0MfFIo7o7N4/Jbk5Vl8mrIIFYmrkj6TO7?=
 =?us-ascii?Q?ZXSLZvLlk0A9YFCzwy4Iww1O9p62/L8VPG62cBOeJRjZdDlYJEkWWTuHxJ3d?=
 =?us-ascii?Q?EQ6fE4wIl+HwVISf8DUaFxHWN9pNf7kmm1Gn0BwxzGSmwx1np+NJxnXGE9f2?=
 =?us-ascii?Q?tH1dVCyBzD+qeuMbYYCKZzCKTqN+eDn2/rObS50aDrmHo5YRz8UZi7h7AiGU?=
 =?us-ascii?Q?h87NBDxHlE4dzl0Lbl5VryoWdd76nvqptIw2DgdDroPW2xW5AqOYKqjE4Pyc?=
 =?us-ascii?Q?8tX0onP3sZYG63gr/DsPeNCF8VtVORKbq6+7LIRno54qbTMZndgolM0rGnQf?=
 =?us-ascii?Q?5+2b9Bs05tBsRCdLvexkPW18FEB399C0WwbpjMnPwhqif4LDcXvNVz2wRZgR?=
 =?us-ascii?Q?qMU9Pve8OlBLXQuf4u6Uvty8WMY9f6OwvUfnF5/jSpq5NfA1DV5/Bffuk23C?=
 =?us-ascii?Q?qj7ArXW8wXCCT2ZOTFOdOmQ9ISkUXEwWtmAHKR+jZ6hMSBDJLiFN9J88mYk+?=
 =?us-ascii?Q?t6OYU8pzfyxTcV4FyXvhjJ+OHCr+oM8ANlAe5F7aLZQSPe4xm0y9VD+bwwHP?=
 =?us-ascii?Q?4eEeCid5kLh6f+voZHNn7Fq+M6f1UL9k9VeMkYRzjKZGZ1aToczGB6k1kcqW?=
 =?us-ascii?Q?fJl7VpMLDO23aQbSnDfqBOZcueR4fwsooIe+yYYcWeoQwGCohl6yv9ss9Zs6?=
 =?us-ascii?Q?C/nEGaTxIGTJdM4mqbXlunQPF8iOnGA+/DX69Tlo/HQJ/NBN1pxe0zBojNCM?=
 =?us-ascii?Q?tyhVDpNGHvmltrlefqx4GOXhycQtPZ9dCYDGye0027PR2YaYqXRJcSzyOtru?=
 =?us-ascii?Q?oU1quTCFI2K1bFunczpMmgb/52AO1mSU0ilOGVUuYOz3rsV24GagHkjmw++j?=
 =?us-ascii?Q?GqatK6PVihxoLDQ2mfxc8Tc9r1JuRwZvO6t4NJbgIK40R96GgmA8vExBluF3?=
 =?us-ascii?Q?hGiTJ8OWJQtGxnxPTudXX8Jn4KLSWbwGTiNp5XMfVi7LK3WchordymKdS7gJ?=
 =?us-ascii?Q?bDNSQf1nn9MAmzkUcp8YbQ4Qcnwz5iPUVT/Wgk1upp7swEm5XTvHKfbVVkgP?=
 =?us-ascii?Q?d9CVGmz2VuqUGVI4Cx6f+0OWY3ZSPolJLKlqHThMYsOWE7gGb8LUq+/X1FOL?=
 =?us-ascii?Q?1munv7G2nXytsYDidqmC+WcBgwVLm8kP0dbhwkcCaVlU3N9syaffjNApPhJZ?=
 =?us-ascii?Q?Cwat0x0CFBNX+kJ8FU7yvpMkPCJGKMOosSMJRwCKbL7GaPEoT0rUIcuzhcid?=
 =?us-ascii?Q?Bw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec94067a-ea8c-4e3b-1c69-08dba2ce4806
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 05:11:45.8180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U429c+g7JsrwZ+XfIpyyFTClL9ymV0wc23OFfmnVTKNJkpNGZvIv9hky2Z/oVTFuqsrYw+bQ+Zeuo8WPSHaWgtuB1lJcSJE6VI12uHJRnF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4590
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692681110; x=1724217110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A8UobvQJp1b6PvuSrQCDLpjM/OquMsoze79OtYs0Cp0=;
 b=X8fF1ujc/0szlAHH8n/Z+xIXNHEd2y3Hn2Sb29QD7o7gp+LFjQZxFwv3
 Qqjb/tqioFWDPbKs0QGZIvjbjCmJgU0iooEZOdb9aZNIh7eWV9OQyf6VC
 VSgeQnlwInBj0ajR+zzP/tYNmB0WowRDx+aVRM1/ECKsnuHkncbPpqH7o
 XuxZZjTQOKivUcifrYWVQuKlgL5cGHCWoRDaCBBn711Ucj3546eo0zLS6
 +Z9j/5N6AEQxV7ZBr4qa2y27I/cFjh8wwPdiqZf1k7adKRl01isdtLeJp
 FongeyxgnKOB4/64FfD1J6jiaTXWWGN4MeCgM4Zw2fIZOv+qM554ueEU8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X8fF1ujc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Clear stats after
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Monday, July 31, 2023 7:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>;
> netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Clear stats after deleting
> tc
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> There was an issue with ethtool stats that have not been cleared after tc had
> been deleted. Stats printed by ethtool -S remained the same despite qdisc
> had been removed, what is an unexpected behavior.
> Stats should be reset once the qdisc is removed.
> 
> Fix this by resetting stats after deleting tc by calling
> i40e_vsi_reset_stats() function after destroying qdisc.
> 
> Steps to reproduce:
> 
> 1) Add ingress rule
> tc qdisc add dev <ethX> ingress
> 
> 2) Create qdisc and filter
> tc qdisc add dev <ethX> root mqprio num_tc 4 map 0 0 0 0 1 2 2 3 queues
> 2@0 2@2 1@4 1@5 hw 1 mode channel tc filter add dev <ethX> protocol ip
> parent ffff: prio 3 flower dst_ip <ip> ip_proto tcp dst_port 8300 skip_sw
> hw_tc 2
> 
> 3) Run iperf between client and SUT
> iperf3 -s -p 8300
> iperf3 -c <ip> -p 8300
> 
> 4) Check the ethtool stats
> ethtool -S <ethX> | grep packets | column
> 
> 5) Delete filter and qdisc
> tc filter del dev <ethX> parent ffff:
> tc qdisc del dev <ethX> root
> 
> 6) Check the ethtool stats and see that they didn't change ethtool -S <ethX> |
> grep packets | column
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: Make the commit msg more detailed
> v3: Correct the commit msg
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
The patch test is failing with different issues.
Stats are getting cleared after deleting the TC and TC filter, but it shows all 96 queues even after creating tc with only 12.
Updated the corresponding HSD_ES for more details.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
