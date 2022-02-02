Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F353A4A6D52
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 09:50:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5352D40424;
	Wed,  2 Feb 2022 08:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8K4J9lxJzQyB; Wed,  2 Feb 2022 08:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0EE740320;
	Wed,  2 Feb 2022 08:50:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 450C41BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:50:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4041B60AE5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zOab5d1C0QZB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 08:50:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C43960AD8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 08:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643791831; x=1675327831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=48J0TwZtvMoDEuE+YcoiqLOqxwCkpQf7CbremTVHv88=;
 b=NHj+fouK1vytRmQ5jEbR+B5HAYx9uhYKTpjRzsYFkTQhwUl4a9gtMZpH
 LG8kwJwENzXX0d+kFiDPeJJVzTPe5OC5514lb3Cpl7T5e7hppAxnS2XA8
 StdylmTbgcKNuuUPcjN+ciMF7gf7AfxSKgATde5u2d8Gmdb8tZhEG0LKZ
 Vs945gpgz8445kzAwIdBYDUJHxBaPvCgWQhBFoomJ0gY9XVaqrwvCgzzv
 D0Ytl3Bh/vak91Egr0iV6rD3jkO8EIBxiw672PJftx83bs9LMwUdJQwBX
 woSoEsoDoP8yX5nrlz2zRs2mTWBO/Z8aX/s2wPIiAG8iDSFtSUUfk5zGt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="227842390"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="227842390"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 00:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="538166607"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2022 00:50:30 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 00:50:30 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 00:50:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 00:50:29 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 00:50:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/74Yxac4jM0HQKAhcfnSdTFZlBRMGjz52D99M2VqrrM++GqZK1fZLXiZAEE/ZUuCjASgixHZNdilt7FCKxXbOlZeOltBatKwYCeW8Z/63WCtzaqvjSaM/10uPX0olnzZ0YX9w65CGPi9jbaojFbv7W1LB+VaYXTmkczSosdzKLFcQFRvI4s2+41Nzy1Ou5ZJk15DaABVxbhuo05jhSC1EYiUcytFP/ucGED+8nTBgBPpmBxmmaXxqhPcKY7mdiFVMWPU/zfh4kXIHfJlSyB57IBctCdw2E9W8WH/KguYuYEYsferZ4C1A7HIfJ556vUH49UbqB20oK0BZSstz97Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NeB5MbYcw8NQIKc2Hb5/0xH6Fa0/8rxbD1hGCgcD5YU=;
 b=OIaTrr0Pzu9Ee1AGLH4nkOecs26m3Mr+RN0AAfkEb6AYFp2rp+kBhfzDwAbNvASTury1cYNud4lXOSMNU5CLNzYBgmxDtD5ZfP4ngPMMbe92yye8NFV+cOkSAAB2/Me8Ms0pwUgimu6SVBW0Jv5s6v4N46DWD38/qmXODECEw3hQI7LcbhpZFoNWGJbNt3YPzLX4A6e3wD+hZgX4rVAMI9IqEcWaXucZqXdC34+y5PN5GFjbjaDmXs+ztgAsWLtSHIevp9OY2bHrH+r89KCzsadkPOr9qIirrq+b03ZODPZtIPNibH9Kfkv0K45w6EAKSgopBUU5ORpt2Ub8h4+clw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN6PR11MB1731.namprd11.prod.outlook.com (2603:10b6:404:ff::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.20; Wed, 2 Feb 2022 08:50:28 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%7]) with mapi id 15.20.4930.022; Wed, 2 Feb 2022
 08:50:28 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: refactor processing
 of VLAN V2 capability message
Thread-Index: AQHYCSpnyv4E2nZoVEuR2UPjQdhswqyAEPzg
Date: Wed, 2 Feb 2022 08:50:27 +0000
Message-ID: <DM8PR11MB56217DB78B39BAECE7B8C510AB279@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220114093636.20848-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220114093636.20848-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dda1f2e-cecb-4501-6d1f-08d9e6290fb0
x-ms-traffictypediagnostic: BN6PR11MB1731:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1731FD7C7E29C48606134D3AAB279@BN6PR11MB1731.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2PMc3+PidIKc662uOg6fDyCgXzIFDGrnad2kYm3f/YH/HOTzmp2u/sTejVYRvXhK/G7nu0DDCBA9eZms0N0o3aAizM5NI8zwqkr6BalHLu0b7mQljDvQ9L9u5nGVkRHpSSu/bdKoa4SPs7gIPcLD7tHzQCa1UJsXQFGSHCPVOpbIv92sQxAtRlNkHgLWtrq+7ZKwyUXfZLNgvM3QBsWdvJRBx9kgJ2z3dfqHNzc0O3oCqKalp0tkOw/ivRjTP6OUn/y8uD4PFNcjhX1mKTeIcrAa/K9/Sx03MGNqJ2Si8ktLPwosijWgItuxeZA4fNwncOKtK4FBv5xbtYuvSpdc892psY8TKrWVztmTUi4rbFz3h1CuGuS/fcwSS6dCWFXcPZVJJQPm3luaHySps4psS3U0zNfH1/MhryGJ/GF2uF25UDNtCb61t6MmizGbslEUrriwBW5sEJRjWHo72783G+g/QI3Q12sVXLbzo4/0z/yn/xDM400rAG6iB0xDmCwUsXUq9GrC/Oz+WPK0SmWyPf+67IbIcrVlqDVWegyBv5tqE8eKr2yx4tR7ClKdyqz0ctigoQACsvMnln0ZPWDfIX7UDrTVkKEt8CBEKc+EVhNn97H9we5ULMYvZIOdLtY6J7PdJlZeHFdVClkUNYr6+aaOsnYlzjRS5aTc/wiGkNytE2WYbIBxH+m/iM2i1dmfiX5D6CkDRYZCeKKQo50b8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(82960400001)(71200400001)(8676002)(107886003)(53546011)(8936002)(76116006)(26005)(186003)(4326008)(86362001)(83380400001)(122000001)(66446008)(38100700002)(55016003)(66946007)(66556008)(7696005)(66476007)(5660300002)(33656002)(52536014)(508600001)(6506007)(110136005)(38070700005)(316002)(64756008)(15650500001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KiGy5Mc7twP4XP1TQ20EPOeVsciF6oiz0L+nbGx648RghmE2ltcz8EHI5kwk?=
 =?us-ascii?Q?OcupPeEKEAL3+6Gh4+IaM/+CdeVt1XxoxzB/sObLc/L3y4f5cNN2cgNwEwu6?=
 =?us-ascii?Q?HndhemXlQJ+QhnafnyCD9srqc3lK72u9XN6vA0CKu+Z12J1uvh4YpOHDZOV7?=
 =?us-ascii?Q?spPchbfCFTE/dAt2azbWbem5DVHZokW5e9T0IzQiuypUAoI5wX77PoFBl/xq?=
 =?us-ascii?Q?q66SAUpmUNCHTkzow88gopSYiIVMGKYov+RNNl00mZIfPS4z9WIq/jTho8gB?=
 =?us-ascii?Q?7unWdGw1nlSEDKDbMb0jKnGklhviOXJ0/Rh+Gz6ye1ncCHk7G8vup+59Gv7C?=
 =?us-ascii?Q?ihMohENgZXxAOKUfg8vQAxfHHkQttBv1aWHFgIgG8EwPnf1VbnJiYKc7c5uI?=
 =?us-ascii?Q?nOpVWFV3R8rIDTawsi/eC0Rc7M4M9phwB9OmDmHFpZRrxAhoZce58NO8BdYu?=
 =?us-ascii?Q?STpCMttgOg78nlMdH/eMPr0NRJQGgUybi7MppLzdQIuDT5KsifbE8cAl7un1?=
 =?us-ascii?Q?B+mFWXzewXgzbsqNZZ6mLlFjTWKEsCb6OpPUiGSX63iwIYwBIgAtLdSTO5Z6?=
 =?us-ascii?Q?Vza+aJvrQn7BxpPqkQYDI/K4tcbVf7niP6Hj8sdLAad2ZikXQgJs/DbPCXnF?=
 =?us-ascii?Q?DDNeZ6uhOB0Q87QFDEZT9+su5O6apPrWo4hQfCBDcSSLSDnpKeiiG2IlopHZ?=
 =?us-ascii?Q?lUcKDG2WiCxccwimhkGhdDLn/InsD9sbHkOiyRtU1p3ImsVIxxw/nWYIHAdL?=
 =?us-ascii?Q?WkbbgYnGACTJf/ujN9f6ctXvkQv74WHvfcafkApdzK9Op7+KCcJxjuvYYzuH?=
 =?us-ascii?Q?sIwZQJc2Kwd44QSzZ/gSyXzssx6qldNawu1gTAEpZrtuRW6nICFbx5DBCMMh?=
 =?us-ascii?Q?PDKZsXkcjTkeOp6RziEvacyRiyiKLfy2hQaS02M7zJTp2JL+MWkc//SjJWM4?=
 =?us-ascii?Q?twvshOASa5YAOy8lxYoV//LJmD5Bq+RU1uk08HaACwSUrHc6UtZjlsDEf+np?=
 =?us-ascii?Q?VHqm44+keO29R/tJjxowRp2cVtpcn45Jnuh0ORvdPSykwo7gu957R7Gl4XrA?=
 =?us-ascii?Q?p++kU6VofuhChdboyzbB9LwQjPYKYJ+1nMEZ5KGAtzgZfzAO4ADyEQXaAn8C?=
 =?us-ascii?Q?HJgYQSiDlu/G5UT7wg76iLntdHkcmhV4JdaT0OIL7gfkbNS1o5si/XzgZ78e?=
 =?us-ascii?Q?5kW06KEzI2Z8p7xEg4WG32nQZ0pYYsH4af1+8bOk4unEhHiMuH6sXhu8swEA?=
 =?us-ascii?Q?Kj6J80Q5A0d4SPM1s08q8jKQZX0J6zg23n3A70b4OWe/9j497tvdmceFsBoX?=
 =?us-ascii?Q?M1r0GCC3BPhByAstxjR+Ej52PSGRm8bBSBt5HI+geSc4GwTzYRQ17KTsXCbo?=
 =?us-ascii?Q?k1ZJu4JjKj/ufwB4K/TfH1tPL93TuN5uac9DRUMInx5NTr8j9RROD50y1tL4?=
 =?us-ascii?Q?0VYeNcTunK2jyLXcLcb0JZD3UPSMxPs42pOK/uDWDfAQifF74pDGgivqbWr7?=
 =?us-ascii?Q?SwcviduDHDCKKGk7hdD5AfTtAO4vB+M8B/gfyjYgsfoVX0jOT7Fm+LLOpmEG?=
 =?us-ascii?Q?pd1HPYiubQ1v+k3DXcx97Q4JGbFoZwQQXN9e/TRp+C7+COy1CAEDNFF7sv7S?=
 =?us-ascii?Q?lCsDbuKeG44ok8v5wn6QDNnifs7g0I1Mn0g6yK/yb5sTHsidLmk/rCuq6Rw6?=
 =?us-ascii?Q?zeXVIA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dda1f2e-cecb-4501-6d1f-08d9e6290fb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 08:50:27.9966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuzeUBJiK/AZe8KLQ3lxIlmgnRjnYD2vC2ACFrWaqkwLza+hIYRHPn8W8u22nd9ryd33iGtl5dHlcSKlG/hRWsw5B3RFcFfmgAcPeIN0FSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1731
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: refactor processing
 of VLAN V2 capability message
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, January 14, 2022 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: refactor processing of
> VLAN V2 capability message
> 
> In order to handle the capability exchange necessary for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2, the driver must send a
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS message. This must occur
> prior to __IAVF_CONFIG_ADAPTER, and the driver must wait for the
> response from the PF.
> 
> To handle this, the __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS state was
> introduced. This state is intended to process the response from the VLAN
> V2 caps message. This works ok, but is difficult to extend to adding more
> extended capability exchange.
> 
> Existing (and future) AVF features are relying more and more on these sort
> of extended ops for processing additional capabilities. Just like VLAN V2, this
> exchange must happen prior to __IAVF_CONFIG_ADPATER.
> 
> Since we only send one outstanding AQ message at a time during init, it is not
> clear where to place this state. Adding more capability specific states
> becomes a mess. Instead of having the "previous" state send a message and
> then transition into a capability-specific state, introduce
> __IAVF_EXTENDED_CAPS state. This state will use a list of extended_caps
> that determines what messages to send and receive. As long as there are
> extended_caps bits still set, the driver will remain in this state performing
> one send or one receive per state machine loop.
> 
> Refactor the VLAN V2 negotiation to use this new state, and remove the
> capability-specific state. This makes it significantly easier to add a new similar
> capability exchange going forward.
> 
> Extended capabilities are processed by having an associated SEND and RECV
> extended capability bit. During __IAVF_EXTENDED_CAPS, the driver checks
> these bits in order by feature, first the send bit for a feature, then the recv
> bit for a feature. Each send flag will call a function that sends the necessary
> response, while each receive flag will wait for the response from the PF. If a
> given feature can't be negotiated with the PF, the associated flags will be
> cleared in order to skip processing of that feature.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  17 ++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 109 ++++++++++++++------
>  2 files changed, 95 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 59806d1..16cd06f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
