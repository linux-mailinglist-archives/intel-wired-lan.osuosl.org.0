Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E8D7D4B97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 11:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77ADF81F0C;
	Tue, 24 Oct 2023 09:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77ADF81F0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698138600;
	bh=SKqmX6xL2l77P1apdGze0XIwBmppPbQAZVBvgnUiIQc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7QkEZCp0ICGhV/a4CBqz3XJ2tKWo4XdZghoPDbnp5u6v6klYm0CbgPQ1twaLQVG1A
	 YGpZfk2C1f8rQ3W0L8Aw7zRpKDJPsLoWCqLXXcfOq8xjFpGBgxKDRkVVupxtAU+gZs
	 0evIKijLA0utNYPBvSPVjSSgIc2av2d82KKHs5PrVGLE0Dik8WeMe9Fz35zUadIOHg
	 AYR02goE4OLJpo0sDPvd7E0CryyF9xgvqqBAJ7TL48Bu/c6cLda8EBrzpnxrn7K6CH
	 UgD9jA8zIbzOoZFlCZSAkfFNeWdz3Kamwi87af97KpOGXXVXH8XXxo2B5Bft9qpWPA
	 jfgE/3qWTfvNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fApcG-vJLUw5; Tue, 24 Oct 2023 09:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B6A681CEF;
	Tue, 24 Oct 2023 09:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B6A681CEF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7011BF3C4
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5C7A801E4
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:09:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5C7A801E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVwuH07HdRF7 for <intel-wired-lan@osuosl.org>;
 Tue, 24 Oct 2023 09:09:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 989C7812E9
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:09:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 989C7812E9
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5641268"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5641268"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="758406440"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758406440"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 02:09:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:09:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 02:09:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 02:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jacUvHwXAUNIzbU6+RCy3otidGICNzaJzUVjb/2SP1MspOESiDh0xGg1udOUEEj1MViGYJIPvx7g2SUJAZp0wq3SmPl0YY0nqmAtDy8f3DEjDxfMJ1Sb2BqyME4kTvHEa7wKNavBye2m/ayz1dALQuU1aRtupiBAviIBhW9tLYuKBy40+GqGseUtGia4nZiTHKtjmmnCg6UVxEStCbvTHhke37ezPwyXwqvh60wluPJQBR90WLaR+yOUnPiTYKDenAUe7zd9Q4DI7IB/3vGKXAHAX5L5Udyv3sEDDmbL01doDpIMZ5hdbSXYFA2ptRFic18RW7tuCHIILQcLEnD0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k19wYtBdJi0Icg1FqPS1XpxGPIvQMa9G41OPJGfPN2A=;
 b=JU94zpeAd3EkaACVxmAD8T6uLulq37yVVB8KREqIbryVyPWmO8uuSDl2nDr00dLWjJA/1kpJRzv0fl7p7n7+7LXJKoOs+4FqWmBgQneYMs8ik9eZ00K0D5HEfanTlVKnq1eGp0XF6JrX94TpNWaEycvL1kXRrdQBIveqMLiYMvXfpI+bhLspbF83YALL+ZCNCx8Pik0MpEsTHthSPvSHk9yQARIiBnQ5uo1zA0Btpi7yE2q+YHGh1F0bJ3ndTfA0AuI3D9oKEC0n0wemyz1iI+18SlBf7uVpdV7sjZzKx5HlFocUlWWBXTFoPBzZ9vVIQxnrK0sRlM9nFkqrvCljIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 09:09:44 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621%6]) with mapi id 15.20.6907.030; Tue, 24 Oct 2023
 09:09:44 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's
 own registered state
Thread-Index: AQHaAFDLmm/NNxk1sUyUhk2Y5O/I8bBOPp2AgAp0TSA=
Date: Tue, 24 Oct 2023 09:09:44 +0000
Message-ID: <BL0PR11MB35213802EB1E4027C9C0F4608FDFA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-2-mschmidt@redhat.com>
 <d9fb8ff7-8c5a-4185-a795-1a67928ff201@intel.com>
In-Reply-To: <d9fb8ff7-8c5a-4185-a795-1a67928ff201@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4910:EE_
x-ms-office365-filtering-correlation-id: a9a43322-30a0-4b37-ceef-08dbd470f6a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4VXybwprx1V3UadAQ/4cT6FqxfHUQDotKMoTpstPTB77euwkdepVjMirfPlIOmdw3Ui2Z8ZNpxuAyKgHNH1I1PTfL7Ci6rjxEX9Myo+0XuB0ax/9XTz6vIyXlhXd0ey/HL6MFuTp1ptuuk1l9JMS3XLT8fESUnaHGCUdaZYax+NUgCT7ZFkuvlPhKZxh64Ch9xj5bAuU9VkM/q7cQkgyfiUEQroccmVasBQeOz82tPSkCURR24Sqm14H72vUnAji702I8jKuHqS8tLgQUPDm+PSPoTNydDWSo4+XhuEQM2Jn1iw/swiGTVEAs9mqYL2wo/ZsGf9MowKfaVSiZxF1U30x5ZQz0oquFaDQo4Qd8Rq+ra84rI2FPpc3pi97tW9JfilOB4Ly2XrW+FWDMPoZIsepkJJjVQFLvGshaSLqRrlNHq7iYEMRmSJDpWCecwb26Ipcx9IMoOK6vz6tq4S7AF55EhBy3b7xHniqH9N9DrYz9sStiegPVtXO4d1Ze/ciS3cdxk3aqs1vkTT/4VTysCgeOhY0wX1CaD7kevBONs/SNQ0pDgt2Vb7nlwh3vtC8+5a6hPiOEcG8pCx0oE5tx39zEWNJl8KHektX8B/rWJxdBkOXJbSX+r/9ugkC8mwX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(71200400001)(83380400001)(26005)(82960400001)(6506007)(7696005)(9686003)(53546011)(38100700002)(122000001)(33656002)(86362001)(4744005)(2906002)(64756008)(52536014)(478600001)(8676002)(8936002)(41300700001)(66446008)(110136005)(66556008)(66476007)(316002)(66946007)(5660300002)(76116006)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GHF8EY4lv5auCkWd1GXivnbgB3mb98c2LlYL0WNCxZKQR/VrKpOikHd2+NZU?=
 =?us-ascii?Q?4zSfii0nv6y4PUvcON0ydEO8xVyh1g6hE7m/E5tDDoLqTEKF3SrTF87hCxHx?=
 =?us-ascii?Q?DYcEpwGG1hqpkJm1oHkMPskcjfZZ9vW95iT+yJYCo6DMxZ2IMa+L68B8izdN?=
 =?us-ascii?Q?3WFoXz1lvAUR4/Hj+iaa+l/tKDBe7l5bJdI2oEO2mOYAIj1ZkHR+Ui1T3dHe?=
 =?us-ascii?Q?+fv/PUpQ1XA8UIX1hcpXsDbp90pLIzHutWnjmTC1M84GXSG5DqEh0gDKzrnH?=
 =?us-ascii?Q?d2bGCbBYBSBYrmbNKCrxUzk75dsAarPaYJm1oC3um4QEHXZiSPAikJTI5O8h?=
 =?us-ascii?Q?0VpErS6yghM5mTCv10Suagb0e345572WQFyUBvSSal3K0j6XAZeYKlcRG/1/?=
 =?us-ascii?Q?SL6JXiJGJLgzn/X9B+ALNy9aynakGz2poBeG6NaWZW0m/zqKcNlRSXRI1dAt?=
 =?us-ascii?Q?oxgI0uNXR2nqKU5K1t5kJm2uCXW3lnNkwYFdwaeeF7R6O4jFYfJi+sV9sdD6?=
 =?us-ascii?Q?JWl33Wwo5JZr21hTunjShFoteCkSyQjf3T84tBPS4V+Qgl3ClTEkWZU4QyVn?=
 =?us-ascii?Q?4H51ZsyZxMwYMQjTpo6ZGEwxjnPzDTogiWpSXAw03wRlnS5zQtDK5crpR7Gl?=
 =?us-ascii?Q?Ri1dPsT/46EXUSTbVYl/yVMYUfQ/Poc6QHaz6Ez4GI3QvJPzcF9j1f0PZkox?=
 =?us-ascii?Q?Ly0kx1uEElMti7/GHz1mnyTSyZ7E3OUnAkcqQmjHEfRhHpaWZFyUP9OqtMYV?=
 =?us-ascii?Q?aTP1di+q/42BBnirL/o3ffUvMrr5tWhuMwextKyyMEmFA2I2tVoA8dDlNkV5?=
 =?us-ascii?Q?mtt5eJ//MIL1VvNg/AgRGUmK74dWRZ1qnREzKWbKd+in5h9LVQEq6LkuVQ8O?=
 =?us-ascii?Q?e4cMw2wg0wMvH8G6rPM8MMXujVPU5f4u4MHDUQmiKWJoIDKojWImYwYYptwL?=
 =?us-ascii?Q?d7oJaIa6CsL5m7M4xeUyBypav52HJGDmZAytjZFx+ZeCcSXNeF1cArbIqpI5?=
 =?us-ascii?Q?tVwEnTkK8jn14ibfq9ZG0HhcNI8GKbnY73DnrL4eRH4JJBcz8Af1vWq3dSal?=
 =?us-ascii?Q?Q/lBHVDPArcTCZXcYEEXwit6JYn8gyHKvX8lcR/Q1mpYfQa4DWDntWJx2//m?=
 =?us-ascii?Q?EzcSPYiv7f12M7IFkIZ6nweqIGHesKRcY5q0ef5Jd+c3J/poCLfGXvEFUC4q?=
 =?us-ascii?Q?bJv0IhhRxsVbpsFza0nwGC3f660R94ebLBodd/a72wztgIOKcfxeRSGQWJyn?=
 =?us-ascii?Q?tBetyw60ziRuEmGben74V55P5Y16zKGZ18IpTA9Oh04rON4dUArVlMcoWNAY?=
 =?us-ascii?Q?WueA2dtXzGtnVw06RkNieiFJxE0TFdF1b1WYhL6cfzWtuJmQGzbNM7pISPX7?=
 =?us-ascii?Q?CQQV5ssKl8ywUHRksW10Yz8RjDJDY9/2xl1s014Vej6m3qgg2aZEfZfm6vvW?=
 =?us-ascii?Q?b4QEsW4jgQR+qB2fNZ2ufqt30MwXDMpCAUOb9SM7bnbRZgeQD/3FlVbGKvem?=
 =?us-ascii?Q?e4oumvqPk2nOSekZM8BPTZpwUxxP+E+VxO0sbDJtDVU0QtOLHFvm4Q+dfTnB?=
 =?us-ascii?Q?QBDgZ4DgDCGIuEJbDBcxB4B5iUvp+IcP0ytEN6hTlb1cSBy0A2j2hZG7nBj7?=
 =?us-ascii?Q?Rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a43322-30a0-4b37-ceef-08dbd470f6a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 09:09:44.2091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vV0OizyRpCOhIWs7z4ePreijyMs/PHt+sFpyMx24QriHmA5Ym3ywqStgbSc9U4eRbklqEYXSedZsq75hp60IKW8D7+GMgc4gSFlNvuVNF6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698138593; x=1729674593;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=k19wYtBdJi0Icg1FqPS1XpxGPIvQMa9G41OPJGfPN2A=;
 b=SshCviWdk9CGJnXoxYtRavQ7yNeOhpihAoYMU4mSvCUyo3oAgovib9ie
 dg7HSUYJPpED0qogXBa7MWTKn4QCzDzwqeX8y2n61proyqx4bdG4Y7Sh9
 m7bS2JfeYykG45JwWH5Brlm+4SPZiSIVXWOOH+hQhAGbsYbnHlM+b71GU
 V/WVBbHCP73lVofH/I6WWJ9TyCg+wNPxjw+n0AbCDkHcIVoiaR88Rm7nm
 Z1XYIZZpTwWDLtYsbLrfHm3s5ADiiy7mvQ29CEC/74hmTOE2eXTHJDCXK
 +WtyUR4NZLyTZNw7RhEMKtA6u7ViTMA3NSugRW7a+fb134ks9KmDGsLld
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SshCviWd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's
 own registered state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, October 17, 2023 7:30 PM
> To: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's own
> registered state
> 
> 
> 
> On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> > The information whether a netdev has been registered is already
> > present in the netdev itself. There's no need for a driver flag with
> > the same meaning.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> 
> Thanks!
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> _______________________________________________


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
