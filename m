Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D26734FED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BAC461110;
	Mon, 19 Jun 2023 09:25:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BAC461110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166753;
	bh=E1iX7tD2TjSwKgc+5GaGykEt7iYvHuF5SxosiGQw0AU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtTGIpiY0CAHRK6Ydn9cZjXZWyZne+OYSnRiKydU4VF6je3RoOZXxdtwjwewN+0Bs
	 TIENgKum28UcCvk+qC+ctqn1JSn/W62qAYZK7SSwNpMA6OEV2A4TrKdoesdrLpDo/j
	 23/AkMjBZHNFMkDsDt+3BMWEjD/syrneBLKGoCd7flHzpoXdEnEGBxg0mSHgyD7MwM
	 d3lVOoEWle9VglwJelUdvDeJqk5vfzYITO1ZzJELbNfsjaIwCte+TG3bIwgqPWakd+
	 dR9SpJ/pxfps9F4oBoYLHdgoms1KTKn+YE6AFlKix0CSCz+DInJd6UnPpSEG8Ue9ea
	 xLq5L81BoKP8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LdOO1Z7dFC25; Mon, 19 Jun 2023 09:25:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03405610E3;
	Mon, 19 Jun 2023 09:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03405610E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 181DD1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E463E610E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E463E610E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNK3nD-jtBzu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9739760F78
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9739760F78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339924939"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339924939"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:25:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803558441"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803558441"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 02:25:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:25:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:25:44 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAt4AEaxZ9wL45gi/Z7YEtMlOv1QagQDZPWB2OUzJc0LAgVBLSCaPCIfAwjC8W5gP60wyoYhq8AHyzJatH6bHrZhLDN3DZLiEm62bWbDbl+SaiELM9UMjKnt9MeGRmbjrxpnaV9DC+NPvYDv8prRKAtFbKqvlkCoZ0DNnlpUZQz4r4YHsBoPOwr+6GvG6Y4zHhfAeEe4RIgJjS14C+6RasQ/EbpIhj6m2nAFTRhJVlfWO8wj6aKoOpJGiOpBKRA7Ds0hTEn4rNnU+xhbloNx6tfDfqrnilrznexzaPWSZutZaJWlQucqCamDk/RpoOuZ8ZQhbDh2e9x3T0BqEX+kQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYKzaKhEhVbUL0FAHRDR2Avijki5jkf6ZuNSXNoLF9Q=;
 b=ngcbP+CBy6BnNapTC21XT8ZQRGbRwYIYPtqJidN0qsGBtFJ5HHTi9kyrXerKaxxuU8pyny0uOJUd2ucGw5fEiMlZroQwtsMeeanm3kePk0hSGSHquF7Gm+FRdFyytCHcLMez1NvP9QDy3UouH/hgIdQ6V/mIXTt7V2pvDAHvkjGxK0tzoZwicy9k+0r7XJ+KW6A0GQZePQxdASQw0yQvuPyhwtu67Al0mjkiyFK2Cm/N42fuUKLwPAKDW5grXdA2l85+jLBR+zWiZXeGu4pW7bekSFP7cmpEVAbio+jzWTWxCmOTNM54C9IT8vGFcSLsd024lhm6xkq7ids0wo/j1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:25:43 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:25:42 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 04/12] ice: Disable vlan
 pruning for uplink VSI
Thread-Index: AQHZneAQEMjWc8LK3E6US9d5evYEUK+R5D5w
Date: Mon, 19 Jun 2023 09:25:42 +0000
Message-ID: <PH0PR11MB501359CF3B25328DD2FBCD89965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-5-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-5-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: 4fc7d624-1cfb-45fb-3983-08db70a72791
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xDcGNXBxt/Xf/LnLBFslbv1UjICOI7adfpJy7oC1IYnpF5hEiUU/R7IfJpnfXyM6oRzxPCO8SnhoZ6zQxqweB7B656Wb7zHR6Ry3t7h3icJhkAQLMT2mpK8Hxd1ZQGOCgopwq81bRn4qwm6cYBGBravqY/PhzaATmMebTPTY+iZWl1nd6EQ9GCDPIt+PlGRtjozEc9mmnq46tjfwEKZhqk7L1p8xg3cKbKtDIbMTOWFHrHTZzntH9ixZPHAhzzO8fTUfDmVrZSd23El5J4rpyz+9JrcnhfGTy0aRZDoPUNglM+brRRzJ0isqj2EwatK4L6wDHKoJM55jdh5l1xt5flHL2kZq3GJICTQc1rsaA+W++VVhjQTs/vIrcF9Z+m4LSCs5sZMxKYFELO96L0gu9eK/INgOdzOPwrwTkiGt4aifsvc/bb8xu2nmNORuFX/el1PTqOSUlUZsOIp40NXc/SCinmw+eg0Uri/NQuYb78VCuGyzNpeanGPKXqN8pGEQnFR8LX6oZW2iZF7XbKgFKt6ztmV/UCsma9t8ptrdi/08umN3AttL9LmMjj9iLXWsKgnTjt5FL6CiMCgxXpXcY6+7qyqBEgbRqrgdFT6UpWE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(4744005)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?axvz0/q3Uprc7WtnzVeGVgHhJr07gJ83VimxlJF7dBJ6cmINxXAt/PRYipzs?=
 =?us-ascii?Q?HS/jGbHGBaapRGM2VRCmNpd+kN1CpUFq/l0AxnR8Tzdsp7C6lqGQ8wYOM8go?=
 =?us-ascii?Q?c32lvgtq3P2YU58YWT5L8l5tI7nKcSMUZF9xfQCkzvrM1iY0wemb1jW89bwP?=
 =?us-ascii?Q?d3bwP/XdnPt0Ckv84EldbAV2usyLUTurK0zwv7ZKsQVs2S39emULYuvaZ0cv?=
 =?us-ascii?Q?+lk+vgNpaHfzpOmjBuSx8T8pJgdp67NPH1j/wscanbxlCD+tgTAKWs/Penmv?=
 =?us-ascii?Q?5yqi79/3e5p88qU5R9e74fuiSOtS6zEie/NIa8Ceuk76e8N+GgMeHQjSHVuz?=
 =?us-ascii?Q?aAhyFEc3EHAAgoK0AO3i6HrhRQ5gjoIqU6sh39/3iwXgTdVQK7K5eLgKVUKc?=
 =?us-ascii?Q?VqEEoGHUP2Xoo5s7V5x8MWjTKFhHdXq9lFU58ZCi6U7UBhUakk9/fAgvklRB?=
 =?us-ascii?Q?4HSSfob3B/RsniUafETYG1OinY9rU3Gc5Nrt/O2+50B5KnELf8NS+ZPi+IcS?=
 =?us-ascii?Q?7JC0nnMC17I0zGSMRQFguvpVOtJISiMmFyak9R/THRvFjVuyRigzTEmpLG7z?=
 =?us-ascii?Q?fSpDBEg3HkuyehDuSXa9AtnRga5lTPGc0+C37f5Gz7tncmijI9sFIMrTALpU?=
 =?us-ascii?Q?ZPSUTBb51a3vD0E388+fyXEi+Aq1UMLR5RAmHYjmqYtRieHNe5/cS4zhqQlJ?=
 =?us-ascii?Q?OHQW6HRqv6YgQebuMyg4Bh8D34TLtTLtA4RQonszTt7TFX9ctmCh+h0d9+US?=
 =?us-ascii?Q?WL1y7xahe3joYggY//wZMfhk2PPSUDDkqOGES2/4BRBsNoONCwl/4n0Oe8Pd?=
 =?us-ascii?Q?20XpvGPKsCEc1RMkT3PNHAUIPqmLANBPFcQjeMwC/jw8msM0ygBpe1RRR9XH?=
 =?us-ascii?Q?GmFhj7/uxciDgaT1RNgHKH7hWR2nvFXjbLrQgxRtj0PgsCzXYQQwW7j45Zxp?=
 =?us-ascii?Q?OVyVe0tYb4iFUmfGGRXj8JHxuEW1WjEJTpn0y+XJqFxgInvhuDW3rE7GoAWa?=
 =?us-ascii?Q?mFiBNEos8sC8COLGNYCuY0p6Y3WnfYr6Oxhd1s3TfWp+DpOu0hEZqc8WRbDz?=
 =?us-ascii?Q?UNDHD/y0OPDw8lRu7A4aDmLrXK9+eYSWhmhd5F4UFfEVyrDFqwFxcJU75UzH?=
 =?us-ascii?Q?IGtFVI1wup+oN7VPpCddhuSMx4hSQ24/1exPY5pDslllEeHzabGTk5ggvoAd?=
 =?us-ascii?Q?Ta3hw865emm9umGCcueeQJ/lSkZRaI+4DynQ7O8LXxdMflne7SdUdcS+gleJ?=
 =?us-ascii?Q?iOe7B1kNbaOPp6VYY5HAbpZULImUa7FpWvGM7og8pyO0Nfm/DtsC1ub/9X4m?=
 =?us-ascii?Q?9ltF+UNzWkD+qW1w+BnIZXh82C8ydb9GjQ30AF6r5zlJtFIhw33+kl78f1UB?=
 =?us-ascii?Q?UUa1Atwvghy8zMNu9uuPzKImfmVJlvNgFGFAkP+QiPAhdUZKBMC5Q1DgLESj?=
 =?us-ascii?Q?zdUj0mVKlelnoyYZ5ku923rYzsuIWJmeC1XT2UEjZ67aZy6bl5JkULCcNyEa?=
 =?us-ascii?Q?KvhPJJz/QJmf082tlETr3UOZSiwaWXi/o0SZavOrfcb7HP9MZOREFKnDo6rJ?=
 =?us-ascii?Q?ji5IhCNJr9+Sw0SJz3xsX+sJ5KBnNa8OnMvsxM9mu+XHHuJgnl9a/86kRiMe?=
 =?us-ascii?Q?AA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc7d624-1cfb-45fb-3983-08db70a72791
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:25:42.8522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J7YEZ6lW/10ogxN8RWTvyDgFYhPvu/36lEiizb7Xy2RCDp8lCtCEzsB8MNjCTXr3XwHX4nkWdheBjkXd88JgEnOxPn/h7ebXJb8671WoVMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166745; x=1718702745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H0u5zkwE1U1QT2CmqG0s8sC/vPNzZ8YAxPsiDbs5RQM=;
 b=ceeYHcEO10WOyh3w4kSSgFhanGq5Mlfa2MIDDdWu8HgZGT/adWuTrzg9
 SbJY/PTMel+9kxR9ICTdmp0k/HrWmqoKorXKNYMH1A75iL0X0XtP7URPo
 i1P72bwq/BYv6VNF7LFzdQZOvGX8lAEORCqqTjS4g2FwJwPv25Y3S4/QE
 P7VsMsqpxUfQl0YYNuMPHEckda0a1klIywWPjLgL8VZ0p24jrJ6c5vnsF
 PQifEnQze/JaAkj9xEiczMuM+bjwSjlx6JmdL5QjkSSvuBmzTtKXXF3G0
 6rn/Gxtl+r9fGzWdjOg0IogWcUkNU1QSD+EafunMhp+InS2aAWh+tJX70
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ceeYHcEO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/12] ice: Disable vlan
 pruning for uplink VSI
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 04/12] ice: Disable vlan pruning
> for uplink VSI
> 
> In switchdev mode, uplink VSI is configured to be default VSI which means it
> will receive all unmatched packets.
> In order to receive vlan packets we need to disable vlan pruning as well. This
> is done by dis_rx_filtering vlan op.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
