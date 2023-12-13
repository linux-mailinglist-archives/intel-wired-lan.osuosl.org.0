Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB94812157
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 23:22:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8491043669;
	Wed, 13 Dec 2023 22:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8491043669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702506151;
	bh=qw1ti/vtRR85oU8VtFfoA9w6pIZMA1nqwF8A9VIntyk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ON5L73FPXFshInsonVEun2or5LeWzJ3a2rcOgrb4n9blrkqkhG/5oVcJChwjXNDL
	 1WaZY/C5OlhrESvQXxE79y/sKMiz57+QECOSaMLe7jHlB7BWXcFWY1pviYPt/5It3z
	 /5cqgwWutplYrlhskh5ViM8dXVHl2dvzJ0htyuwC0j58+WYXCZMMIaRsBVemquIEPp
	 aOCkPlM9sTM2Z8AUMeoN7M3oCSvSRZ+ce2Q7mkBRM+eZu0gnrH/iDt3htbeHSIy4ha
	 3rK5Yi3VtgcO0aGcbZz5O1hY8sqBqt4zJ0Hr4B8rMmA+WyR+zLHs1RXpbX7MQLXVSi
	 CpSVSNgmu5fFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWOSHchSXYIi; Wed, 13 Dec 2023 22:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22C69405BC;
	Wed, 13 Dec 2023 22:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22C69405BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C61971BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 22:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95127405BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 22:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95127405BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id arFAsJwnrPRO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 22:22:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 261EE43648
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 22:22:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 261EE43648
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="392211362"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="392211362"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 14:22:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="750285931"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="750285931"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 14:22:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 14:22:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 14:22:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 14:22:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcvGrKRRX1kDl061WnjzTKr36m9Q2lhl8SWzfxuJXYb+7tVYGzIGKr4M60TvNiQp87etSNMerk6EKTc+B8B+NAno0Pn5XlefhOybR+j85IcqzgjscWi4vzwy5s+wXLMSBTreMhNlA+FT2KUlfhwu7Mul3z4eZRfgJXHl0UL9NKtU96D9uEwyuPeAIP1s4y7jlJO9FKjzic9WfvNnBHDK8AystwOD8Kgxs4dNwu2KdArC0rjTUlebDw2P82UPvOoSTDMyh0XRCGsNK+ne3wMUaij93fOPbRULsFZh+GfwNt0Bm4zYJlKxZV+OA9fXkNnhCnTLzMvvCfRgWAo5gh1SEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQeXFQ3xKEZxbV7Q2zIoJ6IzZsiugaaY3WaFbAeWpoQ=;
 b=cy+eN/VL35WUWT1of/iBbcMEMsh97LBFwZWBNh/gqn9Z2i67Op4AQfR1/fC4xok2MIP2+TAS+boPVdMiL30RbfUewASnuRd7Fdn5gZwrR0GSyUk8NjU2gZSgPgcGFmvEpVWN8aiaT2/o2TYcEfhfSwyy9ohu1qdVGHML/tPplBaB8muITCPdCtaGZ4RFst/TEie1ZM3T4RbV//LzXFnifpLZVAd1zn58C2xyReAZXki3I3+zQCg028sxpWuSdslyUZrOepfDIzMbDi/UJjLTbOmET34mP2Md39wCTEENCjcpZc1K0jlySd8KZR2cv0IwKsEFYxNvPDl1xw38mD4jCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 22:22:13 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.033; Wed, 13 Dec 2023
 22:22:13 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
Thread-Index: AQHaLQtvc5uvjg8YLE+xyCxomu3ogbCl3KiAgAFYVICAAAfUAIAAjo0g
Date: Wed, 13 Dec 2023 22:22:13 +0000
Message-ID: <BL3PR11MB643539AEA523C7427BD255F7C68DA@BL3PR11MB6435.namprd11.prod.outlook.com>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
 <ZXm22Iw+vSxacpkQ@localhost.localdomain>
In-Reply-To: <ZXm22Iw+vSxacpkQ@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6435:EE_|PH0PR11MB5061:EE_
x-ms-office365-filtering-correlation-id: 75c08dd1-e737-437c-10da-08dbfc29f4e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jjCAyPaRHm0x9pZPBcBdxqDT7c9TCrtQBsIJJTiKpF7WHOPbJjc8yBSZ77/bvfGJXNSjzK67JXSOOjScSVm/UKvIXGzvS5uYeSWu+2a1ZUiuJpoxlmwS7B+sbO6X0hXfJI/ID6JtdDkGZse+4mU5AYTNbzfoHGvydlYoHX73IKXVbPVV7GrcrPv+XHqca+UFlQTC4PTJj85CQydrMYaNRMZKV8XzOLyewirp8TtOotQiYSZ0PzkircC2nGoOWOevK+g92p9XFufuHygz2tIuuKGKc2WnWBZ0oExei46AVZrVXHwDuQnKSWPoOpghdi98rhvwh/DkixL0zE05EQ9BFOvhjN0KegUfKJtcY0fZaiDEsap9YWTTW/3+QHjmazUnVIfQFJ72hkXAAde+rWcxvCL54XpmJ80TI0nRcLMp+orcKyz5QtIdNZQzYw6dIka+Ad6AWuV8dev6gj60NBp2IO6mC7ybtk6peY1NYpby5LcYkCzng/8ohNNb/aYa7KVyQtL2SKDNaGWRidJit15hMmnLqDgwl+HtCniIBKfQAfIFrW48wgYv68RX5lYU3edqWbZ0eAAcdB3j7SNqybfseTHgPBdEQTLAC4IFxDZJRrIQFbliceJ9z5ifYJCrXi3O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(366004)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(107886003)(9686003)(53546011)(6506007)(7696005)(38100700002)(122000001)(5660300002)(8936002)(4326008)(26005)(8676002)(52536014)(41300700001)(2906002)(4744005)(71200400001)(478600001)(64756008)(54906003)(316002)(66556008)(66946007)(66446008)(76116006)(110136005)(66476007)(33656002)(86362001)(82960400001)(55016003)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E7Hi4D3uQkYVgoSdiif+eDGqGCiPQecN8S4hmAVzkV4TU5WhlPHcMmVVmRRs?=
 =?us-ascii?Q?rqVr+0X5rpVbZepBDJug9uewUzOf1so+KgDormlHEkFs/3BsZklYOTGEFHuI?=
 =?us-ascii?Q?4u4DY3hGWaY+9+WVrTcXYHX/2JE3JX5OhlBcOOeNy+Dok54nC5uoeO4tG7Do?=
 =?us-ascii?Q?5XAr0KxSqz/6Xn2aMb67IU+ykpymVkOS1Me5/dPL6YEpLCFW7asUxQhV+mTN?=
 =?us-ascii?Q?bsVTdf6d9uds5CjO99cS+josU5NCEFZT7kuw7fzGyRUKgk+D72HfByAjnNVW?=
 =?us-ascii?Q?ldrFDVfzAjRR+Dpf3VgnkVA/V6kfQJKdOJ+BYhXtwZ/xOztXYW3siONlpkY9?=
 =?us-ascii?Q?RaMvmdu4wmgbh+O8Wfht5HtMStVwhzyBRPzZCbhKeIEQJsi/+z09PR9W8Brh?=
 =?us-ascii?Q?OUe9eUKq+Ow8jU5xtjuPdS0zsogrIdgE4r1rOjpdVqEEovExTH2fTV5lQ2S0?=
 =?us-ascii?Q?mcdgZZvHzQ8kMJHNt/U1EZkbzqkh8KdnxX5zm03BMvWAu8O7RQL4WbN51FR2?=
 =?us-ascii?Q?DzIPYJ64tVULITGxh6CsL3jWBfc6R2BQkqIf0SH0M3pXFedhPA2ICTuqzFjL?=
 =?us-ascii?Q?kiOiRPFLIUfWWqOEBSrR/uYAYBsomev6F+PgDazj5xxe5alk2RA0hd1DoUHJ?=
 =?us-ascii?Q?wW+lK83+kSVyRHxv61jNHEQtDqkfZ3aivZ5wcJoThy7G12DqMSvZFkVhfC5r?=
 =?us-ascii?Q?nlc/3FEkDg5ckpE1xFlXteRZjTWY6tHNYvLBQZAexAMykmO/EBdsAHJXxaLS?=
 =?us-ascii?Q?LUJ0XIUzigJ6aovg2fw49SaGBiG0EyLOlUhXbqlocIDTo7/Tk60NZQ8f4K1+?=
 =?us-ascii?Q?r+8yxsje8AooDoF2Eunleh+FQXhPQYte+CfLVLVLAV2J1IT6NcJe66ee8BEN?=
 =?us-ascii?Q?oieU9JUrDaAHv1d162NWGrug/Xm0OI2505BJQFytTZB8xNLod4y+aG4QxG4q?=
 =?us-ascii?Q?XP7YaKrK9Ve1ygNO5qEg6RcaD8dR9S8mi9wQAUwSpdCO3Z5ITlfbRNKS0G0j?=
 =?us-ascii?Q?CuEKMBffKY3k25o/h1J08ebxvBtSzVlIl+YkTQm37+S5GElx7bUPJfXTwcBI?=
 =?us-ascii?Q?EORbvld3FolfvnNLlvClaoG//fdlpnhsn1DfqmSAvXKPmkcT4eNBX4Mf1hiT?=
 =?us-ascii?Q?YdgpXO8Gn0jNrMf23LBBgXsVFpT1Jw0iaj6fplFWT7SXoLuCZMurPeLAGMiQ?=
 =?us-ascii?Q?4F8jbXlM6cPZ56iIO2bG3J/JoJ9mP6ZoHj8+EFvjRuTCgT8HxOJ3dV8CwSQI?=
 =?us-ascii?Q?XWWTPhS5J1SxuzTywoDJ9P5VVeoQBnlefavViuKw9OmCdUXKzgUQUMBq4p/G?=
 =?us-ascii?Q?i5BPwGJudzI5nuRwpjjgSJ03IOsbs8jf8tTpsxXjZyQtziWDMMB1y8lESnzC?=
 =?us-ascii?Q?NDU5H9pxmA61Q9/idr4JxJPCiXzwBa4gttK1klvg/hv/nOGKE8voqRwnwGRG?=
 =?us-ascii?Q?imsox8bhAgbjZuVdiEzeTKTRNPSjOPTGvcX9fbq6c05AuUXqQsF6ED/7TJCd?=
 =?us-ascii?Q?DH7+a85ptyAikqsl7qL3vZ4ZDgKYDkSGobSEi10KlwhErfUwAr/i49EJFHK4?=
 =?us-ascii?Q?4UX8mdCY3uMbw2P6Tf2bKZJ6L37P5DIzBU8eFXEa?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c08dd1-e737-437c-10da-08dbfc29f4e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 22:22:13.5261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rHjAUDlngbImFnC/8GUYOW+AnYKF4mu9wobd/y1VQQ0TOBvtPxr0KjqNjUSI1X0T7IVe29EO+GHZ3O6NCA8T2PVaKP+F1gG7qPT+c+gc3H4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702506139; x=1734042139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cQeXFQ3xKEZxbV7Q2zIoJ6IzZsiugaaY3WaFbAeWpoQ=;
 b=P8mPKe93Z5tqpfxJzo4lyZb5KOOhp44s3nU2+RvOBF3QsNJCG1T4ydJp
 yZFwdIk4VyBwGfXxoHNrOK3gPcN3GcMbGyR6yyTfZdFTlFlgLvNd+JChq
 OK2ya3BhwZe4SksnqF6+0Fll4oC4xY4XboR3v1oxk/AX1jR8WXwubBYXH
 UcI15VBpHTRhW4sDl1qHwlz9itohZxpxtzDnjme9R7UBl5Wo1S2Sssem8
 h5gwPvwyQz2LqdDMwDUuSvzj/Fc6UNLyYAV6edH5+W4oYAAF1s/IbVkY1
 A0D1VoeseVEKN2Twfy3/0lgst6/pJqPlArtSOT3L1StAHdACEx0fQzocS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P8mPKe93
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kubiak, Michal <michal.kubiak@intel.com>
> Sent: Wednesday, December 13, 2023 5:51 AM
> 
> On Wed, Dec 13, 2023 at 02:23:19PM +0100, Michal Kubiak wrote:
> > On Tue, Dec 12, 2023 at 05:50:55PM +0100, Paul Menzel wrote:
> > > Dear Michal, dear Joshua,
> > >
> > >
> > > Thank you for your patch.
> > >
> > > On 12/12/23 15:55, Michal Kubiak wrote:
> > > > From: Joshua Hay <joshua.a.hay@intel.com>
> > > >
> > > > Tell hardware to writeback completed descriptors even when
> > > > interrupts
> > >
> > > Should you resend, the verb is spelled with a space: write back.
> >
> > Sure, I will fix it.
> 
> Hi Tony,
> 
> Could you please add a space ("writeback" -> "write back") when taking the
> patch to your tree?

Yep, I can do that.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
