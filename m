Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A0F79867F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 13:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D70DA81F5C;
	Fri,  8 Sep 2023 11:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D70DA81F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694172977;
	bh=UTBxFOCdLP7PUGnKWc4NzlWHP7jxAyH/hseHh5Tvz/A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rnoqbsiclIyfZpVg5JOE8XA+1ENrbsRneNjjkebzrojsLORbhZ++Snido9BVt/vhx
	 32LqKPDbzCEfOopmM/WPyHS8NujqWbzHCcza8mjWJNhidUThKQtmG0qKibQq7+DUsm
	 XI9EP9W3ofPJ3WbLGIrVk7f+SO5oJ5g7YTOjpG5FmFtwnaSZKiPe8zkvg28WC+w+6i
	 RSwSUVtGbivzqVUOzj/QxGNbvw57uTGwmz2EDLlh9nUIL79PTNTmuVwQC2H7BwNWVL
	 he0734uA4cKEOQjBBnoaKUut6ByfJNlUKIdMawHgzO4ysGCzdnOCe+tlAVWsx6wS7u
	 5VgRGTP4ORj6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YAHkB_jGzYD0; Fri,  8 Sep 2023 11:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96D1C81F57;
	Fri,  8 Sep 2023 11:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96D1C81F57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5AE91BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 11:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79EEE41BDD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 11:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79EEE41BDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id utbNUvNAYi2t for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Sep 2023 11:36:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 612EA41860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 11:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 612EA41860
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="464001830"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="464001830"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 04:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="989228807"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="989228807"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 04:36:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 04:36:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 04:36:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 04:36:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 04:36:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bP4R5b7NNMYjPCpbquEXbvVjII+g7Skq/EF63d602hJ+JrC6AeUxnEHH0o3Cybs0w/Yt5ZRwny8IOioQ2coDMsJK4v3FDUpZbT0U0D7D/JM/GzLXOdmWYQrrMaJ+TBgLi/3IooHnW3gvFKWAwUbMJl/M6/4B30SvGVzji2fxTe2ZI7uCBenUIDhEYhLeucMPHlU49pGoFDHZGnNTYL9uXFv3HDf5M2AwBZnwgpKeuOE9QgzqiJoDCpJgAecAaPSPVmbSsLQ1QsI6PWKcM3VHeon3RpEYJl0/GgPbIepe+CxVhkktgUQS2Qv44PjPnjKbKDRNszQ7A8OtbIlRyqaAbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TioecrcYqnYQG6790866moZvgtimlx2rcXu6yBlzjWE=;
 b=Owpv9IZrUhNqEeBHs9U/93I3442ij7wUpxRw2bMeen/QaqP2A8qikLTRWPPJgtLwuzHeieN+Awxdq6h7RfqNJoNQfhXEMzYDZVfz0U/nag+n62dipbqpIR/QBzZH9AASjQIN+wmRNlJPd1rDc09eNhEjlbknnSo69hrUqiMglm/32bDXpJRbsn7yRWXmMK5qq+p2fFEtVT6xiFcQNWVRexvc0SDDpjCfit3aXt5i4p8TtRky6CZsc2ApXYgArLWFK5ry4WWxeyVmz+BYVykVOioFqPY2Dl2ScoMQsRucmsJKJOhkK5v3TOJKUDluKlIp+OJ4UvNh/wZAK8a65JeQYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by MN0PR11MB6159.namprd11.prod.outlook.com (2603:10b6:208:3c9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.21; Fri, 8 Sep
 2023 11:36:05 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 11:36:05 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
Thread-Index: AQHZ4kgT6jcc5VJTSkuX2TKEfvwasbAQzA6A
Date: Fri, 8 Sep 2023 11:36:05 +0000
Message-ID: <MW4PR11MB5776D2C4833945112513F628FDEDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230908113101.153591-1-kamil.maziarz@intel.com>
In-Reply-To: <20230908113101.153591-1-kamil.maziarz@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|MN0PR11MB6159:EE_
x-ms-office365-filtering-correlation-id: 9655ce4a-9fb9-4683-1894-08dbb05fc9bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 49D9/Aq4h8afhjG+8JVijtHyY35KNSui0r/2bGNQ62/c3nhNSwP11EKJLjIx6opJ83Nv+hjcZlQClmLMIpXycNhbvK42aABBcUHPjCqT/NJvWryDsvZUnjXwVb97fuU8yNRZFuO0sEUwxyCN0DGFjj4siAviL9rbAQWdLSkXId5eORSwLVhxptXc/q4ug1QdvSKanf0CAyki6rnMHvRrtTh1x9XnpYVUQKecriAsE+JheL19wxM4KKy6XzA8UfT+bVH7EGGlB/oQIAa4ExPVXrUU3V3+529wa96BR8ab6rsbfvpx8GKo6vNOM2AvQRqsdAe0v5m48Xf85RTFZebjZaOA1NsY59uaJrtCvLlUNZ4GyPECHK16YKH3mbhywB9nHBB7HoJwkfxKzVIWpvnyiMaHFNDydWlL95Pasqqs7mo2Q+fxHS5eZNmz0KWRligXs+J1noUU0VUsrZSCO09jLrdwjVy2exVyVemHF7PqY3FjgrHrNewxRVGVin0jZVADeSJ7e0gzWZC+laoITNVsFMsfk69NfoqDwnSLJrEIJ0/o+tD1kBejZxm7kQEDKXpEyDV2Vc0Fn974aaoEyAire2HWu9fOzXnBJAaYNfAQMQQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(1800799009)(186009)(451199024)(86362001)(52536014)(2906002)(5660300002)(53546011)(122000001)(316002)(82960400001)(478600001)(71200400001)(107886003)(4326008)(8676002)(6506007)(7696005)(8936002)(9686003)(26005)(33656002)(966005)(38100700002)(38070700005)(41300700001)(76116006)(83380400001)(110136005)(66556008)(66946007)(66446008)(66476007)(64756008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o1V6SyuLRFwXdpG2M5c1kLl1OnClDj48LUN9/TsorH+RNLhfNYr2miYOrJhg?=
 =?us-ascii?Q?ulCIu30PWg4Q0OuY24oTUndmRezjD2yIdvKYBOeeTy87+kKLbQr9J6KNK9MP?=
 =?us-ascii?Q?HgkMP5v4sf3sOV7qf6L1znjQ8bzgEJq0PLBf94tvPOadJa66lwIMn+h9qHHe?=
 =?us-ascii?Q?3DY+C7e1WQ2RjX18BhxV70C08wdOpCQ0riwyL4riuik6SHfXeMj7lVyaGDeP?=
 =?us-ascii?Q?2gmPT53hEczhx3GoWJy0aXYRSpzL5d48+ZgwAAGJZgW51e5OP2BA+L23YqGQ?=
 =?us-ascii?Q?uibKC0wPabGuWH8xWijds33adAeBvZyE4C3Xi87ebIdPd8scZkBw1bNxNY3g?=
 =?us-ascii?Q?VaLML76+HH5tneMOOuif5vzLuK4ST3rqXwPWQaya1QKgkRgeMOBs5L/+Q2oD?=
 =?us-ascii?Q?P2BSQLa0rDw+BfGAiEzpE/vaVeJxkW32jIsiQNjj3f0FKihRkwoWCY3+aOwk?=
 =?us-ascii?Q?cYHKxHVk8ZnCyIwWNgQwj8tegwo8h36ESaps7PQWK5ULGObUKi6EvJb9/wsV?=
 =?us-ascii?Q?pm1qwp93p3OzMW0Ptp+UuLwK+m1WiTGm5K7VLN9P0sc00XvtObQRmGeOASp5?=
 =?us-ascii?Q?tMhq8juVZ9fciKQU1vGM7fOjrN1hUxufXaNPUGGjvsWOcPGgnbtW8sUvXREm?=
 =?us-ascii?Q?YAVvdhkrJI2pNcQkrkkTKYWIEoUrzOwTIPmTdxje9qV7UrLO1c/buDPhx230?=
 =?us-ascii?Q?nMTsNPM1TDSG6Gshjbjs1C5juqVhmiPn5J38SjS5sUIF6qkPxTH5QUON42+x?=
 =?us-ascii?Q?dhTQMpnuE1tJ2aJiiD7jQEtuEp7+jIBDy4/Lc+X+5+iBzEDofxhpgimQLwZs?=
 =?us-ascii?Q?3rOCcHL5xbSFqjIkYFuqS5AfilcGEXTUpg8ALu51aS3G3nijkUN3k4pO1gde?=
 =?us-ascii?Q?ydwEXOIp/0a1ly0vMDkMYq9G35bsGTmh6aNFzilwMvTQly5IloHTPsGX/vGR?=
 =?us-ascii?Q?vesIg3zFdyNnYpQRoTcgyufQOielfOnY4gH5SkWQIKk3Ro9tHfgmphBcbll3?=
 =?us-ascii?Q?u+MTIxvJ1MHHe/9D3rLoX80ubTUaxq7mPSo6nn3bxCvS00QxrS9gRKEedKOO?=
 =?us-ascii?Q?56aFFqbbSvzdK4ltyhkGtKUBMeh4YkihuStfrsZYiidnpJYvtmCzyCQ56av1?=
 =?us-ascii?Q?rCQhUel9fzo1egCY3BE5/SkBfXhPbgKDJ9PoQ7c9gHs0RbMKh2JJOPv56SgN?=
 =?us-ascii?Q?EcCxGs9yVrHJIqJJAOY1EqVa7qn77fTbf6nmpIYj4aVZq6pX/AWu47LVUMJC?=
 =?us-ascii?Q?e6nK1NPsExeYG/kqY67uNZJ2uL5bfdFnS/f8Zg8ndQz2r/qtqKKxPu9AjrTT?=
 =?us-ascii?Q?TFRjUMBDUHIuZJygMNhrAFUFPLkUQP0BMw85hp9f/gV1o6NyAOtAZlQTi2N5?=
 =?us-ascii?Q?POdYnGIjM7ZjO5R8HUNXJtEBwzd+tzZfvNkA47o2RtpHF3h/YSosu3KznU0h?=
 =?us-ascii?Q?Uga31bIRYXJXgZQ2gR79OV5bSAlcHpbllSdxIejDr+NYvuQf6u/cTJFWXNmz?=
 =?us-ascii?Q?GSNHsmDKi9zRnu2dpholGN30lwMA3/lf03uDFsmUYLJzyvGgJuQUn6wq9zTO?=
 =?us-ascii?Q?/mG7cmqTTgSsqgN0RPYxYEleCV3j4R2iTQt98Nrq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9655ce4a-9fb9-4683-1894-08dbb05fc9bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 11:36:05.5784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1xznFzvDhyMfziBLwWyYwkRbAOcNWk/IjI1x/Ja352/9uJ0A//KLWNCZjVQSIH6EgmwDA73wHqV1MdDegfc5WZDPHeNxK90/Izs3Y4tuSG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6159
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694172970; x=1725708970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ERaMjcPqSOu5y3zJz0w6DpbSZtCJGdwDdOsQlL7qttQ=;
 b=bI0U+M3r/FE2nrWeAi90m5PYZNddA+H153Y3Dv578rNk/hr7Xsc1s/9v
 goX9IzdA0sZgHOXurjNploiWL4lK9pegHdtIaws/j9m/HFKPUkbSQxXCZ
 nUL30+KFOQQumqzvcxBW2yHU/t0G0hLSSI0GauAQJlaMtDgzrVuOqpkpn
 wMgW6pH9L7oUvL5DRFysVph/24jV+ZLvZbcRekNz9sWGYf7i9rqyFwdNz
 cDP4AbFwaPX199M3pejEXKFwxo9ikLdPu4TFraVSb/0tQvMT3MeaQrXtL
 sBp5V+egaqUKXEwWuN54WwZ7tVRdLzhAWex+m//RiFdZept/W8i2WhZT8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bI0U+M3r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
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
Cc: "Maziarz, Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kamil
> Maziarz
> Sent: Friday, September 8, 2023 1:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maziarz, Kamil <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx queues
> when setting up XSK socket
> 
> Avoid stopping netdev  tx queues during XSK setup by removing
> netif_tx_stop_queue() and netif_tx_start_queue(). These changes
> prevent unnecessary stopping and starting of netdev transmit queues
> during the setup of XDP socket. Without this change, after stopping
> the XDP traffic flow tracker and then stopping the XDP prog - NETDEV
> WATCHDOG transmit queue timed out appears.
> 
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Why Piotr's signed off? Is he an author of this patch? Missing Co-developed-by?
Although the patch is too small for Co-developed-by tag IMO.

> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
> b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index a7fe2b4ce655..cd56ceae8aef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -179,7 +179,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>  			return -EBUSY;
>  		usleep_range(1000, 2000);
>  	}
> -	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> 
>  	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
>  	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
> @@ -268,7 +267,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>  	ice_qvec_toggle_napi(vsi, q_vector, true);
>  	ice_qvec_ena_irq(vsi, q_vector);
> 
> -	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
>  free_buf:
>  	kfree(qg_buf);
>  	return err;
> --
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
