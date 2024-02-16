Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23535857F9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:43:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C799740165;
	Fri, 16 Feb 2024 14:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUyiA0QyyghS; Fri, 16 Feb 2024 14:42:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D73641C16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094578;
	bh=q4dmTEaDLDGh1kzdznjMdh//mkRaacnYYJx6Dlly3YI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=284sK7YD1Dm68yzBYptGejv9aHkV7j2RqVKIHDj/WL+s5LZcbuk7eieKOAq9Y+XMp
	 KL6Nsv3FmAL5/8uPNA/FKIP0iwht/goObomOmJ4nj+fIpalYL3m8MFS0qvBb2lpMUA
	 1R3JMU69nft5PzXf3igi4SyKZIgNFWzIwFdeYcrLQ9lYapRMYaO0s0orAzLhSzI1W8
	 5aee4xKnaJfEfl7fLaNmYTvXsco7SfjzV+9FQi99q3GplcEaw/Yzzmt1RFQgZ4TNRV
	 rdC5dz30LdQLiuSJIbhClshVyNyrHnKqWT56zce2IlTOapS4EwDfoSMthrOxCY5t26
	 JFvD3PM7pjcNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D73641C16;
	Fri, 16 Feb 2024 14:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6593D1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51C9C83D99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ch2CzCwST_Rx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:42:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AA07083D8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA07083D8D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA07083D8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:42:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="12849244"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="12849244"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="4239718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:42:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:42:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:42:53 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:42:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUIdS5FjmvO5zDj8TcnIHdat9HNoyu/PMznmNE9LiNohldE13j4bCBrgycQov1EnoJ3xYUI5cigdk7AIl1mT7IkIyeM8JYDWzMKdyjBx1AQwhHWr4i8vP74UiCLa4URewNz5yhZw0VDpzsOYIHBz1k1bImmgu5imZuK7HPmPY8nsKK9JBrfsS+U7OKVFCfPK3xc1/vQb2OFAGSRlaFOP1pJ8rycwH7XHA5SmRCtSKW2uiBqeGKCr5jFpbjzrEq7EgZqp0nXcqqXgp4wZFquSgU48WBCI5VK52hNjkb37wFuatYsUlr9fTIs7zZzMrtDVAorFhcxQZVR91KgAOfKYKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4dmTEaDLDGh1kzdznjMdh//mkRaacnYYJx6Dlly3YI=;
 b=P2Y9HDW9c+fA6TK+hSReciH/4hVH8TB1cYs+g5fT7yuWZ1rf1IyBHQCD3ZOJT5PVNBe8BrX7ThlykhXpKTkMWAACWgTACgs/fSjJOT33eNW4vFLWY+b/yOaHrskGnekpdhwyBx7iBmmQQLxG+NQKZAY2WubeNEu/kofHCQMcAjZmvpQgj8l0ZNFWRUwgIPcmIr8BhY/Gsf74BVoPjs+H3rAyXhIYTNXfy6S6vXPjQQh9J3vvybR25YSAnWQ5Iu1kvryt4988pE+LQ+GqsSWL4uj6OB+rIY2+6gYZJD+RuoowW9vK+IAOihRyf7TRT5kskcRVhEaZnDiud1AzReHhCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB6287.namprd11.prod.outlook.com (2603:10b6:8:a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Fri, 16 Feb
 2024 14:42:51 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:42:51 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix pin phase
 adjust updates on PF reset
Thread-Index: AQHaW57prtE+p4Cca0WivKBIxKOBJbENFURQ
Date: Fri, 16 Feb 2024 14:42:51 +0000
Message-ID: <CYYPR11MB8429F74157C241EFC6F48770BD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
 <20240209212432.750653-4-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240209212432.750653-4-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB6287:EE_
x-ms-office365-filtering-correlation-id: 92f19e4e-c6f1-4d39-b233-08dc2efd8da8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V91DNNTG3GAFnkurtlpEYdz7N2NOdrqw0L99owhsj51P8DZvI+dSMF40Omm8zT3duXvl6xlPbOh4Uc3JHqV4aKwoMuYq7lyDU601MRJai9OsOHYYebfQDNCsll6FDdwG/v8os1YC5KKaciTU1b//hiALwWoeAvkPqssOW3o/mii+v/sWKhgAJqmqqg315wQJldGrgh2NfvcEdV8MqKfnX6Z51j3z+hQ7w/LkWf+n6qBv+LHrb4ppkNy+jHZy/RfwyYVa7DxAnJwn7VuW2uaKpbakzenSQJDeiZFse1pQ8nONUEgiMchNwFrEQCH/Q9IEvTAKYRyYMmwmv+WBA4+BTib+Sk+QQDjcQ+VznEku97nG3ntbKycOU/P8JeF8dIGTSQNhIgIiCYPymNrCCMijFUXceyPHTjQ2ro81pwEAXalSUufDm0XkhwZbcB8q2uXdohxQN4u59misb27DDkAxRkWL2VB3FtjGYU9iem4TZBN9TuFGk2dOFU4E95Mc4mDTiC+ECCEdgwRgs5QRUq3VbE0QoPUghzUJzv/RdJ+LyEd4s+/jEe/AD7wgRmgSJ348zI9Decnc9sftZNat4j0n1Vw7dKNAEXJyoaQdKSLdXJ4lWRlAYYG+dA75zRIDQ2wB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(38100700002)(15650500001)(5660300002)(38070700009)(41300700001)(33656002)(53546011)(6506007)(9686003)(478600001)(55236004)(7696005)(83380400001)(86362001)(66446008)(26005)(4326008)(54906003)(8936002)(8676002)(66556008)(64756008)(52536014)(76116006)(66476007)(110136005)(316002)(107886003)(71200400001)(66946007)(82960400001)(55016003)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CFqvpudU/AwOUPTUizQNZnn2gUaqB7SVlDEgl6g/BtmdFq2qlocINsGytH3S?=
 =?us-ascii?Q?SfIb6pasxVXbum4Qj99mL1hF8ogqa7oYLRc5Pwj/tpEd1KHF4ZS2uJXXqOu5?=
 =?us-ascii?Q?V4SwdFnEbuDR1cvaL0zKLmz3jew0hsnanoxJsVGE8bLJeNHw7JK1mmMrGjQP?=
 =?us-ascii?Q?fDs8PH1RkrFCcUz4C1NQaToB4niS7YU+hS6xPnGCfmCfQdrCW0sWD17sDMhI?=
 =?us-ascii?Q?0bDk0UmmLlry3umlfMEnDG1HaVx4gNhYMgyoFlKVSjAyzwcazAZDJU9nlEq3?=
 =?us-ascii?Q?JYgMN/3RAmyuMyJ09zFnxMTKtjPKG8unbql9jZHXg5RW0C9pM3S9f+UR+g8s?=
 =?us-ascii?Q?cAolDfYx97XoCjUnr5RtIop77tjdCY5KZvIrBVKlPnJxWzecxa/aQ7nUkTDM?=
 =?us-ascii?Q?3YFnZaV6LgBvtvC8tNu3nVZxgwmtBu54JCYj/dMa0aHGbheXyTXIxQDTuVI8?=
 =?us-ascii?Q?P7a0KEcF376wo6+n58/9Zw9psodQgWoJigaZTT8ci2KknQ74vo8q+4MhMS1O?=
 =?us-ascii?Q?li8mD2VgZUL6ddUtREMn1O1y9kTS8u6Lc2TNNWRLycLJENObA4yTFcquX/rV?=
 =?us-ascii?Q?Qc36nm+LU6B4jg8Ul5uLbqjsmjibI7D3CFy/kqRSJz4dC7ENM5BR3/vMSlmw?=
 =?us-ascii?Q?/hVvvO9AUQcWH8gc2yd+gaWBBaDRE41QhtLiXJe0i1MnbMC8MWVjXK+ECITd?=
 =?us-ascii?Q?5dRyRVr2If4DaQqcocULCwJjlleRT8cKlRwyZsYue+GD7l0QzxU823jJPKxT?=
 =?us-ascii?Q?5V0WJJVc7MUSCRbWGMXmo3ZYIYeaEdM/Wlqga8sRKFNmcWaW/LxdUZqOo7Nh?=
 =?us-ascii?Q?bXbrK430da7fG3XnCZnhJSqSnsUKB0pJ/jvzQNWtt9QrlNsAFgQ7UrW8qy3u?=
 =?us-ascii?Q?YhzK7sF2U4y5gAwrT101QjfrRX+LuRXRXst1jL7wWuM8jtDbDi0/OYF51hel?=
 =?us-ascii?Q?IjS9zwlx2dc7rBA33+SKPuk+CYxWhNU3LTzf2CdNTF4cib/siAS68uAilVwQ?=
 =?us-ascii?Q?FIbG66BdGXeV9ioj3+g+ZTLsH8S773k6jzMqgHnznELqKqFhUOxmTD4Zgd1b?=
 =?us-ascii?Q?RwR2cStPUAbxTasI1hlNmACgVK2EhfF0ZwytAfF1Z7H9w0FxzD0s/Bkymeuf?=
 =?us-ascii?Q?yNpz71YrDfCXTSSyg3z+eN3E2Vo7IuNGnuVpkzsX/upIQgB2Yk/S9ado9Uct?=
 =?us-ascii?Q?avRViMc2yI8NtPp8gnq1F9rcCnz99yXHKxYxqugJX/B4BE6OXggZoO9R4yaa?=
 =?us-ascii?Q?KMSZ3GTkvwsQMQ/chWMUQP94eyKouU/KddnbhidC7pUfmy397kjROV9lPoHm?=
 =?us-ascii?Q?cLCoXj7ANufi0ZDfdUyucRHaRXSEBeO/Mqnpaz2/nxzF+Qp7ss7Cw7bzY2xB?=
 =?us-ascii?Q?DXJklswsWzS96Vj0qtL3u81Db3Wt+EWSgqmoYk2bs1I1fd9IstY6Wl5f7/I7?=
 =?us-ascii?Q?5kS5iI9tUkXS4dRemzOi+v5sRKcPnwv/RfgRztJ/AW09qSEiT4l3u7ZrM+Nh?=
 =?us-ascii?Q?vGTQ41VZMqGSvoHpWIi16tuzLxTFKP9Km2G3Qy7JscJ2Pm0eqH2/oCOC3q3x?=
 =?us-ascii?Q?izj8j1fT+xz+QE2QsHIFywnUTP1KO0fFt+27Vxqs+VSZrCCWspk4FNQu6BQF?=
 =?us-ascii?Q?qQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f19e4e-c6f1-4d39-b233-08dc2efd8da8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:42:51.7575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LDdNMhC25aUJ9JgfVkg9h3uVxUaUBtxr5c5KlH926qGF0O/7MRnQQF9LHycJszrayz+QrMWDPmEKmkLgUG6ZmF4ch27EcvbABpIn71lGNgQNTgFdsRJoR2pUOLWU4Uhn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6287
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094575; x=1739630575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z1FKIxrSMwfjxhPRvzJHoBXSOk2BdNL8mxAco737KU0=;
 b=T8kwf9Bm8jDw1LSaLE22h41Dj1nCARFw8xq8Cl581lpfKhwobZMBvyy5
 2ww5uPHnxCHgKRf0hC0YNp4GuVRVphfG1rNPF0HE0GfwWFnFIiXh2sr8N
 PBc8+GA02CWouUzQEFDMjk3Loavs3Ypdby0HibNkN1qFMpD+ACHfnKSPZ
 5mpT0Z7+mQ1bPXtXubI+Tg/sN5Tdz+WIqpROuNIB5/LOLDk5Znbo3DvDv
 uJgSZV0W9abWH9jyJLSZj0ok1vDFlJ7RZkq91m6PgdKBA1kYg/OTLmuCc
 zZlhxwbrokPVGnqMeF4deTNneBT6MUspPocqnUYLtk+h2YIfBURnSHBla
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T8kwf9Bm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix pin phase
 adjust updates on PF reset
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
Cc: "Bagnucki, Igor" <igor.bagnucki@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Saturday, February 10, 2024 2:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Bagnucki, Igor <igor.bagnucki@intel.com>; Kubalewski, Arkadiusz <arka=
diusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix pin phase adju=
st updates on PF reset
>
> Do not allow to set phase adjust value for a pin if PF reset is in
> progress, this would cause confusing netlink extack errors as the firmwar=
e
> cannot process the request properly during the reset time.
>
> Return (-EBUSY) and report extack error for the user who tries configure
> pin phase adjust during the reset time.
>
> Test by looping execution of below steps until netlink error appears:
> - perform PF reset
> $ echo 1 > /sys/class/net/<ice PF>/device/reset
> - change pin phase adjust value:
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>	--do pin-set --json '{"id":0, "phase-adjust":1000}'
>
> Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +++
>  1 file changed, 3 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

