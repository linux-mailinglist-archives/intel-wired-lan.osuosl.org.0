Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80F61F4AC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 14:56:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7017A60A89;
	Mon,  7 Nov 2022 13:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7017A60A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667829374;
	bh=wxVGZKVfXTWTQF16c8A/2NIicltcrNvjQp1Z1cp65f0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Rvi6X4HeeRWlUCPBqDWPQTIZfPv2LIZSSlW9Rj781bYpnkgT2rgfOKkDSRTGBsz4
	 hUJCWEueiupeVIaWoKliqyOY8ugKjUIQiDBOvjNLkWuSf/EO9BLWlUCkk25+JCgce4
	 Cf/DS+wx4PkoIK1vIUy+Y2YaTXHTSi0fN08Zry4BL5hWdE1iVqMSIrIoo+WrOpfqXZ
	 TfKmxNMnmxO0+S9TAPnb1EkvSYuI/0V/GJ7qFkZYsnurho7vvwVQ9JD3ZKiSQmEm0Y
	 ay5F/hXg41ZCOuVlUqZ32bLe7BCj+EYfmw4frK+i0nnDaNQcvfMrLhejyFEgtHqu+K
	 3RL85u2Cug4oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHkZAoFjr1nq; Mon,  7 Nov 2022 13:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57905607C1;
	Mon,  7 Nov 2022 13:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57905607C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC611BF29F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 13:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71E4F40302
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 13:56:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71E4F40302
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pMIng8jJ-RU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 13:56:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E196402C2
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E196402C2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 13:56:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374664411"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374664411"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 05:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="699479105"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="699479105"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 07 Nov 2022 05:56:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 05:56:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 05:56:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 05:56:00 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 05:55:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZU0isYOVgoeEIu4V+b2RqL327ztzEf0InZhfpwKlwMvJQggOzIBkPQqmzLjQiUL9lyPB+eNF/2H0Q0Q/6Zs/XspSIYfeO8DwMbgejBlfWYOaK05nY+BvITfjl5D6qrGcAl11HsTMLU8JP314iWPnG2dmdKyGB38A24R2esMs0nBUizW/cRqgEF9YFlIKn9+5tpChWaBqBF6qmbiV4AWS/VYDdTs5PGdbrtaSvJ9oSF0TYEerjbYqiQpRuiDG8HICeVUYflw/ldY0KeKtcqhBsIaD82AgJEujcXSv60GeAi7Ekl7MSPpZRCaLReeLZPsAs9NE7P5y08H613DPiUGKfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JvUBIKJcwnj9XH5R/u9KdXlsjOoIX2wrvsTDysqXZBc=;
 b=VV/9FkOqeXZHXgQJ/9zmO/4f9m5SAHaRxywzFCEtcd47C0CQ1z+a96kjDMbgfLlgd7UYmb1iczECdnfXSdEbv/WcP9AVvJfqcOnIr5TNsFytUTwZ6fLHh0OFJ08sUHmW6RohEyutJPqUCOZMLXW92zUYewr1iJfsS6Y6msEmxvXUbIvG75oOUJM03m7YHmzqVKFsczOWKON4lpYOiQavRHqGhpLGYyfujZU8QR/XuAs1TIC7UevCgYOT3ZnqpWuzjGu/CgQCChT79IycK8NNwkx4vc9rvWiVYLMwYlLqOyjp57P0vb5nsufQYcX/RexkB2UoV93IXp/pNwD5FZwcIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 SA1PR11MB5900.namprd11.prod.outlook.com (2603:10b6:806:238::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Mon, 7 Nov
 2022 13:55:58 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee%8]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 13:55:58 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Leon Romanovsky <leon@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH net-next 5/6] igb: Do not free q_vector unless new one
 was allocated
Thread-Index: AQHY8I+lqgc1ihEbjk20f99VW4RqSq4zDNkAgABw5WA=
Date: Mon, 7 Nov 2022 13:55:58 +0000
Message-ID: <DM5PR11MB1324FDF4D4399A6A99727B5EC13C9@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
 <20221104205414.2354973-6-anthony.l.nguyen@intel.com>
 <Y2itqqGQm6uZ/2Wf@unreal>
In-Reply-To: <Y2itqqGQm6uZ/2Wf@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|SA1PR11MB5900:EE_
x-ms-office365-filtering-correlation-id: 99c6cb25-d48d-44fd-5bd0-08dac0c7cc3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: No85Zjdd3Zxp0CBFagIqIWAGTBp9lUUn/+MI0mMZ6YBK4KKpNHEOvI3FOUtkFCkxySGKCRGQnibWu/BPY93/OxRCSQdlPsggYq3wRh1iGA4Qz2AOCtWfkqGPANtYUVqGV+vqtW36GYfE7egaqF+trqM0WlTSmFtFjt9L7E4qYQDQAqHmZcTi/PDgJr7GeMuOkKvtBnSQ/axr/mTVkiuQOAGlEnMoLQBuB4JA59c/o+YKfmYAtPC1PT3AoW/UYoucgSt30gMS6hnl8iB6ZkW14veTn0n5okqVegz8dmekczRUalfa0F4VOD9S++rR5wQDZZ1oT+Z84DPg7UqWPMg5gJ6M0B3EyZGYJYFszgk6AGf2WcNTZFz5VZEBtyQWfkjoAshVZgdMpIS22TWUksE6RUl+wvmgPHX9Rp/Q4p1gAQ6jFgIiswzL/rEhEUSVJDWjqCUQAt5u1M/paFp+qhpgllv3Lye3tRgM8j9qEqlk5GC7tsUDyTHsIM+tyEf1FbfBqsK9gEaCu2/6KP2pQGc51hHTnvUVd3xc1zX9DWtUG1FBP9YsiW4y68WkWqjU3zidm65z2DFCKqoHva+fIza26aJuAaAbekGQJegO9yDHF0vsCKYc5R0sUvwA+fHtaBbASVOmDv+VRboh/BBGpyTm0ZctMcuc5s96b/r3Ikklp8LURyEOVjmMpRoKdvBQw9mkZCfgoVvE+BwhTKXLIkOfi5AYGP88Y1v3aPrS13JrUmsZJlLgOumMTsxDNtmnEK/zRKLRrzt+qBafebvufWENeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(39860400002)(376002)(396003)(451199015)(82960400001)(8936002)(86362001)(33656002)(122000001)(38100700002)(66446008)(38070700005)(64756008)(66476007)(8676002)(76116006)(66946007)(5660300002)(55016003)(52536014)(316002)(41300700001)(6636002)(71200400001)(110136005)(186003)(478600001)(54906003)(4326008)(9686003)(26005)(2906002)(66556008)(83380400001)(7696005)(6506007)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BvP+M0dYy3W2SyYHug1kl3Zw0xiFM+Ovr0OwC414juFWDSiuDIMSnCZWNjus?=
 =?us-ascii?Q?DceSMt6QpnJUvg5ewbeuZlOcXFSD3ebLnmI8ITnSWVEpipNGCCRq6wOI3k4B?=
 =?us-ascii?Q?Ff83wHM+NhCs4SJcUPmezTbquPY36bIroG2/OOVkhDkYfXvYlDDoa4ZWeohz?=
 =?us-ascii?Q?8Ho6+glGrWvHY0IlCguePZSvYzdY9WzWGgqD4HVp4pO7gQO7d5Qfe9E5r7zy?=
 =?us-ascii?Q?qYexyvvL5Lb1U+xmzGZlux0JD+F73n89M9FBjLih1j5X9ghl3gtSpet45ezT?=
 =?us-ascii?Q?YtUZGAdHnSiPSYchdcBmjTSMgnQ/FGLVXv2TvjYHPae2RylCt7N/bB2LIFd9?=
 =?us-ascii?Q?4ZGYMi0fxLTI4/ItNlnjgHXRUx6MLBoYxcrc0j538DKyonJ7ow7EqkJkJo45?=
 =?us-ascii?Q?shqobH6NNeENdULtU/xb2sCrRQfKrjIyr/K/Ah5nA30FrV/ojNhZkHIRXROJ?=
 =?us-ascii?Q?GtLRX12MunqQu/VNEXdhX7H4GaLHrh/u0oy60NyuxWzy5hHL+73I8h7m91vv?=
 =?us-ascii?Q?P5aN34mH2bCcsOvzbruBuHE+7tBX2BrVUvm/rW90bFhxlV28qbjcb5YWn8nO?=
 =?us-ascii?Q?2efex6s7hw1PnRMuxXa/20kYUXWwvKR6o1Y1H4Y+bBJwNNGOAX8eMTGc3M3h?=
 =?us-ascii?Q?VcVLFDmkE77UwA9JEV6Lky7cZebqvW+ngHvJ+A62phz67FA7vwLmIyVUfYR4?=
 =?us-ascii?Q?F8RSfNxZRLJ1Wug8OZzfTqcf1T/XoORt4dNsH7gd/OE96ShFBeZQY8q5L9Xk?=
 =?us-ascii?Q?XQ9TxVq8K9x8mbRukdhYZRC46GHTL4yv5jfI3n2uSyLciTmk/qC0+Ip66G2G?=
 =?us-ascii?Q?GWHhDs2Czw6lpVKDONj9EFfUjEZysHCaQKOUK3HaJSy7UtKGK9Z2YljR/eQd?=
 =?us-ascii?Q?+IYKlYiY936s5zpOu2QQc8zkc6sW/UjZPCvp4W2kjgVluGqeo/PWnVd6UB8Q?=
 =?us-ascii?Q?CxsQE5CumHtwP7ZKZpd2YGBtXf5A8VhTtyBONiSf58OgWOJAEcXz2BsL7jov?=
 =?us-ascii?Q?yHvjaec4Ih8YPO8lG2fPOVg7v5juqVydq2sOkx2jSyqmj61JjClOl7yUYSin?=
 =?us-ascii?Q?pUOlo0rpcfVRHStq9HV3PX8lb5HMvmrEh5A3t1LD8S0hxQuHku5ugjY4yx9o?=
 =?us-ascii?Q?LYBIMwVhfgWIT7UeJ1yr3S4FyEINH4lm/n1ZozgDh0wzh0bChIKxaHdEkoIf?=
 =?us-ascii?Q?uNacdU0U4kE3qTBDDtF1JzCIrDhxCzVkp2c+z+PGkoU+2kLMEMjKtchENpt5?=
 =?us-ascii?Q?+KQITOr7vOBXTyrT7+MNh/zNKbJ8ZtumFbwODtVMUAHMeY5Dbn0ry+eNcaKj?=
 =?us-ascii?Q?GI5RVrpNfNRcLV9+uSEiHu/dw3CDaS6CieOa0tKGQLCUFSz2QWrvVkDIhWjR?=
 =?us-ascii?Q?ZFAQVZfz+kfrQRXHJlRby3nGHs1xame+8ILOpI0RYFiyNqZ5tgs7PAZled30?=
 =?us-ascii?Q?yjL0d/pAykEP1pb0yh6KJsDc41N1V2pP9oum5fYgnvgMUF3uoEI7uDzHavHk?=
 =?us-ascii?Q?KrGROftHpQ8CcBM2Z84sr2C4YFkPsRW0Ra5Uh6rOshXW75IgGO+Pl/VL8X3W?=
 =?us-ascii?Q?/Eezq7vUOcV2FaxvnIv4XbqwixtbtGzz4LS9Bpmn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c6cb25-d48d-44fd-5bd0-08dac0c7cc3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2022 13:55:58.3501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dNDgidiOK5Gip5k4G6JIoG3VAh5wV/wP2DUaT8SSLTIdDu6y1xW3Z80laCbeft98rfzuHn3mAlifHklaMn3dSeCZ0+BNtUhWWzjstGpyXFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5900
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667829367; x=1699365367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2G05OI3vSZHNg3SVz8ZExMVziUVxD6YEmWnAx0Io/Yw=;
 b=Ha/2TB5kUA7FoTre9xl83nBBWkce+jw6UV5rbqlSS06U7nLvH2IrWhEq
 17z4LP9vdEBDxrtIp8INAjL/IlM24Rf6O0JrLcQE/tHZnfbfn8n8ZZ1rS
 ZeMfN2EHGNob6pI42u1YvwIFRQY2C90YNC4CoeN8+bsKTXzTTq2fWQa7Q
 FNUoNnAuZe0clcxYzNpuwOHS6ZdeyHUWC861BbO0kWS+tgD3Pz9RcPGLO
 iMr7kvzPQNRXr3QkFCMqIjl1obQsEkccMaLjkHHBz5WrCABy96nStmawJ
 7PSWhPy4Q6STCVkxFK3UtJfWHAU6ak5OZDY333RT/Fjzgy6DVsBycIu6r
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ha/2TB5k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] igb: Do not free
 q_vector unless new one was allocated
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
Cc: Kees Cook <keescook@chromium.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Leon Romanovsky <leon@kernel.org>
>Sent: Monday, November 7, 2022 2:03 AM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>Cc: davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com;
>edumazet@google.com; Kees Cook <keescook@chromium.org>;
>netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>intel-wired-lan@lists.osuosl.org; Ruhl, Michael J <michael.j.ruhl@intel.com>;
>Keller, Jacob E <jacob.e.keller@intel.com>; G, GurucharanX
><gurucharanx.g@intel.com>
>Subject: Re: [PATCH net-next 5/6] igb: Do not free q_vector unless new one
>was allocated
>
>On Fri, Nov 04, 2022 at 01:54:13PM -0700, Tony Nguyen wrote:
>> From: Kees Cook <keescook@chromium.org>
>>
>> Avoid potential use-after-free condition under memory pressure. If the
>> kzalloc() fails, q_vector will be freed but left in the original
>> adapter->q_vector[v_idx] array position.
>>
>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
>> Cc: "David S. Miller" <davem@davemloft.net>
>> Cc: Eric Dumazet <edumazet@google.com>
>> Cc: Jakub Kicinski <kuba@kernel.org>
>> Cc: Paolo Abeni <pabeni@redhat.com>
>> Cc: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>> Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker
>at Intel)
>
>You should use first and last names here.
>
>> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>> ---
>>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
>b/drivers/net/ethernet/intel/igb/igb_main.c
>> index d6c1c2e66f26..c2bb658198bf 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -1202,8 +1202,12 @@ static int igb_alloc_q_vector(struct igb_adapter
>*adapter,
>>  	if (!q_vector) {
>>  		q_vector = kzalloc(size, GFP_KERNEL);
>>  	} else if (size > ksize(q_vector)) {
>> -		kfree_rcu(q_vector, rcu);
>> -		q_vector = kzalloc(size, GFP_KERNEL);
>> +		struct igb_q_vector *new_q_vector;
>> +
>> +		new_q_vector = kzalloc(size, GFP_KERNEL);
>> +		if (new_q_vector)
>> +			kfree_rcu(q_vector, rcu);
>> +		q_vector = new_q_vector;
>
>I wonder if this is correct.
>1. if new_q_vector is NULL, you will overwrite q_vector without releasing it.
>2. kfree_rcu() doesn't immediately release memory, but after grace
>period, but here you are overwriting the pointer which is not release
>yet.

The actual pointer is: adapter->q_vector[v_idx]

q_vector is just a convenience pointer.

If the allocation succeeds, the q_vector[v_idx] will be replaced (later in the code).

If the allocation fails, this is not being freed.  The original code freed the adapter
pointer but didn't not remove the pointer.

If q_vector is NULL,  (i.e. the allocation failed), the function exits, but the original
pointer is left in place.

I think this logic is correct.

The error path leaves the original allocation in place.  If this is incorrect behavior,
a different change would be:

	q_vector = adapter->q_vector[v_idx];
	adapter->q_vector[v_idx] = NULL;
	... the original code...

But I am not sure if that is what is desired?

Mike

>
>>  	} else {
>>  		memset(q_vector, 0, size);
>>  	}
>> --
>> 2.35.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
