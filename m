Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 024BA4C8D5C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 15:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8116E60ACE;
	Tue,  1 Mar 2022 14:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 38odhznCVoee; Tue,  1 Mar 2022 14:11:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53AE260899;
	Tue,  1 Mar 2022 14:11:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D69BD1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 07:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0E2C607E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 07:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rufy6EXCfnag for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 07:03:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2052.outbound.protection.outlook.com [40.107.236.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE8EF60596
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 07:03:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvvOXFY4D+4j9Om9loFmmlH6oXGdE3SgsJoHYgP1pfqfYVyfDnI4a/WdRkjMn0VK/Y3r+NvEqj87OZ4qJfoQQiYyJc12nexWV4wk6V7U1/NDHzrGOzY8Myph3r8y19ru08DQRN3qZFjKVQgRCOB6q3AM8+h0qHsN7mihtbIbPYl0jAJMvnHEiGrgU0CVsZwVSo1N3SWpBlxrRrLY1W0q9Hy3UAkeFJy8gjbjKc41nzNaKtWrm3CusIubiZfzVnf7sUWNVSp1/d/BrrEKoJ3sXqINbrYII/iF2jgFr6ja3TaM32dka6cwAqSqZc7FeWiWN76VN77A19dyXbym2h5mOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jo0XPCk8EMRRi/eZQNSbAIIYUIJOZ4OTcUMZN8WAooQ=;
 b=l5fjk+B3leRMMHbv9dDOPZLKLzKKzvUBLIgc/ohAu4Luina0uiizu/fw7R2jf8o/royUgiZi4uI5Ldsr5CZVstQwPVL7P4PH+I7Qe6qGAGBLBlBYql+Wc1gQB0GbjdkKEWpdyb3MvEuZ09bxh92ScsG/WbxpX1xu9lVlzfti97MYpvT2cf9ooyuhU+DrXQmW6YSUuIB9YUjh6C4L8C1imZMQlgiN7LsYxlpMFkKcI86BcMssCgVX3+xcSf4lMcOD6kn1oClcoPM9pK5r3XbmsrzzWTu1DRPpF6sQwxw0MuWu/pJfYnrKUzpK5KyZT5ul6M9tVEHnPz3dFJmroAqrhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jo0XPCk8EMRRi/eZQNSbAIIYUIJOZ4OTcUMZN8WAooQ=;
 b=vAN1z48ZTkTjY4nguQUbwFhv2wSXHHppfrMIPcbUb2G3w65r9dss6onF7B/GQEZ0TFJDuTx4qZEyhPjnLmycf+Q8RrAZJmk9w2fV8/c2hT7/BmV6brMZ2BcJc7I2JvDklTzL5xgRq8juvq4wG7CZw6Rb7IXWoACt/FZGhPvH/jU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM5PR12MB1241.namprd12.prod.outlook.com (2603:10b6:3:72::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Tue, 1 Mar
 2022 07:03:38 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e03f:901a:be6c:b581%6]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 07:03:38 +0000
Message-ID: <3d37084e-72d4-d3a5-ec8d-df1ac1758fad@amd.com>
Date: Tue, 1 Mar 2022 08:03:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
 <2e4e95d6-f6c9-a188-e1cd-b1eae465562a@amd.com>
 <CAHk-=wgQps58DPEOe4y5cTh5oE9EdNTWRLXzgMiETc+mFX7jzw@mail.gmail.com>
 <282f0f8d-f491-26fc-6ae0-604b367a5a1a@amd.com>
 <b2d20961dbb7533f380827a7fcc313ff849875c1.camel@HansenPartnership.com>
 <0b65541a-3da7-dc35-690a-0ada75b0adae@amd.com>
 <ade13f419519350e460e7ef1e64477ec72e828ed.camel@HansenPartnership.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <ade13f419519350e460e7ef1e64477ec72e828ed.camel@HansenPartnership.com>
X-ClientProxiedBy: FR2P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::18) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 302df7da-fd4a-410d-8dc7-08d9fb519c10
X-MS-TrafficTypeDiagnostic: DM5PR12MB1241:EE_
X-Microsoft-Antispam-PRVS: <DM5PR12MB12412AEA183322CC6E7C13C883029@DM5PR12MB1241.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CaXFfN3gQBsD59oHgr90d+wbdphgr7kPmQfkKb+3r/NEc/rtNpjNY6xy00e/ndVf+t4JzIsI+/5PIpu2wn48xlzB8AmdcQRuhLNxO3xxEr+bulj3Ft7cnI9VV/q1caN2mRRaFl6yL+7JzxkGqO2FQ4JPw5HwN0a4hORsgcx/Lr7WWbo9nhznkmlz7tRjnbokbE7Imz4+dxctTWz5vwyreMdJxtaT47e9aI3VjxSPohtD94wkes8Z8U5s4WsmbZIOJsjqqXrJvRUk6Tlz1ieqx1f7Bp6BG/9W6u7tQKUwsr+MmM+SHGAuSwdYKWSV7svQrIRqVwkaLpkc9UNT7nVieCuf0iSmvegeQc57E9bHJKGJjwS2IyUEMlMRYfSYqE4Wd/v3+q+ktHFAIZGYIS+RT7YAKuuZtWfVUt4DzFLjZMRGwln+pONLA6eN78uRrxGnkLrnhL3OwFMVKBvtEmCn+Tjr6rYV5PUjuR8vGLjJ/R5YPzsDIeY47ZP7TfAosuthBjQI2hDv1kLQHeZhL5rfSgxdWQTGiLQEsicqwSKJ+ou2nH8ALkwSHUzhfauIJeSJGQ/fp4x9qTUL/vH+v5EQVO7KXW0rC7FaBYKRR1E48OSigpr/7j5lDr2h6wxD0ZWNTR2wbrVr3OqsTgOSjtkpajY4qLR6L1nxD4aGfYzNCRSyRmmePQsF/8TJBnWpG7PAar0kWWzxbxXRkd+SBFa5SEouWYv30crPEj1OmR4uFMw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR12MB3587.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(4326008)(26005)(186003)(5660300002)(8676002)(2906002)(66946007)(66556008)(86362001)(66476007)(6666004)(6512007)(2616005)(54906003)(110136005)(66574015)(53546011)(6506007)(316002)(31696002)(7366002)(36756003)(7416002)(8936002)(7406005)(508600001)(38100700002)(6486002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTIxUkMwUEhFOC90S0RLb3NieVk0Nm5ESnNXekIwSnNIdm5Qb3lQL3pFVDVl?=
 =?utf-8?B?alMxejBuYzhPZFpyZ1p3d1VvcjRBZ3p1NXFnNDBEWml4Tkl1S1FlWnQ4L3Ju?=
 =?utf-8?B?SHVaOStwczFEeFgxOWNmNklDNEdONDZzMEdoYmFWMlVVRnFiU1pSQVhMb1lX?=
 =?utf-8?B?d0JOS1JIVGtma0dGa0ZiRjJoNktGb0VJay9ybmVBZm5XOXBRdWlqa0wrSjhy?=
 =?utf-8?B?blBuUU5FdDdEdWRIY040Q1JyajRRUHFHb1dyT3Q1bUtvWWFuUzBOc3d0U1FB?=
 =?utf-8?B?elVCUFJSVjhuSmwvdGJFUHNVRHc3RmZzZEZQTEFQTnVRSGVrQTRWWXpIYXJ4?=
 =?utf-8?B?Y0lLWFUwb2RLT0FudlB1MTNYQkNLczkwTDBydUhteUdYMlNnOWJ3VmtUWXgz?=
 =?utf-8?B?bzlKdXo1VmJzaWgvaEkxUXRMSFJPMlFLcnFycVVhTUdtdUl2eUN4UnpZbE9V?=
 =?utf-8?B?UkFFVHFSaDBvbHlleElyN28wSGRSMGl5OURkL1ZQTUw4RUZlS0g3YXY2Z2FC?=
 =?utf-8?B?Zlo5eEpVSEJUNXVhaC9qZHR1R20rRkJrbWZIYUJzR0dma1lDanRJVDA0N0Nu?=
 =?utf-8?B?YjlnYnJMQ1hXN0xuTUpwbEhrQi80YkdHL3VJdTJaVStpZm5BT29UNjJROThN?=
 =?utf-8?B?Zkpvcm1CVTMrMXFPZjAwNmtGSVEvMkpXeFptT2FTT0NDbE9VV0NWSjVpWTBE?=
 =?utf-8?B?ODZSWUorRk5zeGtGbFp2MTQxODNKdXF2WFIrS0tiQTJ1RCtQbXhldDlNemo5?=
 =?utf-8?B?aHZNWjJoSGc3SzRzUnpKRm9LVnRzRzRTN2FLOUFKUnA1WWk5WDRyZjhtcE9p?=
 =?utf-8?B?REdsMUZRRTRQV3dpalIwRWdPcVlqbjlBTFI2bW9VOVdTcGQ2NlpHdTloK1dG?=
 =?utf-8?B?T2g1SUdSWFdYdEVXK25jR0lKdzdoQlVpaUlrcXJuY0l3a3NLcFo3TTFLQnZH?=
 =?utf-8?B?M3poRWtvUTE3WDNQZ1pTUkpSNXlaKzhoSUt5QTBtS2tZZnBmbWVPdUc0aEt2?=
 =?utf-8?B?YjVFU1ZIMjI2UzFVdFp3cnI3NUo4MExCSzJrSW1nemdVS1U0TWR0ckc0RjdE?=
 =?utf-8?B?d0tuOXpGTURPeEcrYzM1MVdhdktnc0NycHBON2pTaE9idWhJbURiWU15cVZI?=
 =?utf-8?B?K1pBS3V1akgzTWJ6bURXTnloYnlPUFhHL3dRN2hmVWpOQUtEQWxrU25XMkV1?=
 =?utf-8?B?WEQrMGwwZzFRVk1ZLzlYZnRUREliTTNjeFZWczZ3Z2VGRll6QVdiaEd3em9k?=
 =?utf-8?B?T2tjcnZMZ1ZkY2I2MHUrcnJmdDF5S3ZZdmlXVER4bkhUbHMySHVQRVNEclFE?=
 =?utf-8?B?V2RMSkljQ1hMamkwT3RxT1QvZjA1RUd6Wk9qYitxY0FlVG80VmNERDc1Zkta?=
 =?utf-8?B?SjFnUG9RcVgwcHZEWk5pVW1LTzlVcnZob1pMbjNrb002VjdvNGdTVExzYlFj?=
 =?utf-8?B?d1BMb1dEQklvNkZrTjRNdy9FdFBCd0xoL05tY0YxQXdrcUZzTzFPa0JWUzhu?=
 =?utf-8?B?RnBuMHpSQTk5MmkxeTEwUG9PNlJuWDNrWGJmbHFUblFpbnBDL0FhdjA3M1Fj?=
 =?utf-8?B?c0paNGhJSEJHSkZIaDdFQ0JMZ0hJVlJmVHR2dVVZVTdxNFdYUTF4K2tmaGJr?=
 =?utf-8?B?aUpwNkVFbzdJelAwdlFDb2U4ZkZPUGNqQW1tQVJvengyZ0pUaWtOQy91VlhH?=
 =?utf-8?B?ZlUzMzFCMFQzQjY4VjJrU0xPN3BjSlBTbGU5d2ltQzlDVTFBaTBPWDBDQTQ5?=
 =?utf-8?B?RWZhZWJ4Q3Y0cy9zaUF1U2RUTjVadnVETUNhS2ttSkdxVVVQNUVESm8wMllX?=
 =?utf-8?B?bFZSVjFLd3VvUTJWYlpaQTZVRlNXWVV4RzlGVkp5UGJhdm8rcFc5MnYvbnI4?=
 =?utf-8?B?UkJ3S2dPU09VMlY2T0VPbHduVWxiYXZqd0NGS1M4MTZPMVdEbkl0d2dEeGMz?=
 =?utf-8?B?NGhlR1lMaFBnbFAxRTdNaHhRNzhNODBiS2V2b1pkK2NuU3dtMEdIaGd0WUdr?=
 =?utf-8?B?YytubUdzU1hVeGZ1NHVPNXpNanhzV1lmRWNtTTBvakx3RjcwQ0ExUmhmcXdR?=
 =?utf-8?B?KzIyVnlRZllQdkVybUJjWi85S0FQbkxQVk1hTVJ4dkY3cExyQldSMldGSjBw?=
 =?utf-8?Q?kjuA=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 302df7da-fd4a-410d-8dc7-08d9fb519c10
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 07:03:38.2638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d67d8u277CntQhYj6Sq9JC5m7zDPTNRpA1Ua+t/lEoHqCHZNuqPtsnLUFrJJmruS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1241
X-Mailman-Approved-At: Tue, 01 Mar 2022 14:11:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 alsa-devel@alsa-project.org, KVM list <kvm@vger.kernel.org>,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, "Bos, H.J." <h.j.bos@vu.nl>,
 linux1394-devel@lists.sourceforge.net, drbd-dev@lists.linbit.com,
 linux-arch <linux-arch@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, linux-scsi <linux-scsi@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-staging@lists.linux.dev,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, dma <dmaengine@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-sgx@vger.kernel.org,
 linux-block <linux-block@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux F2FS Dev Mailing List <linux-f2fs-devel@lists.sourceforge.net>,
 tipc-discussion@lists.sourceforge.net,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QW0gMjguMDIuMjIgdW0gMjI6MTMgc2NocmllYiBKYW1lcyBCb3R0b21sZXk6Cj4gT24gTW9uLCAy
MDIyLTAyLTI4IGF0IDIxOjU2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAy
OC4wMi4yMiB1bSAyMTo0MiBzY2hyaWViIEphbWVzIEJvdHRvbWxleToKPj4+IE9uIE1vbiwgMjAy
Mi0wMi0yOCBhdCAyMTowNyArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBBbSAy
OC4wMi4yMiB1bSAyMDo1NiBzY2hyaWViIExpbnVzIFRvcnZhbGRzOgo+Pj4+PiBPbiBNb24sIEZl
YiAyOCwgMjAyMiBhdCA0OjE5IEFNIENocmlzdGlhbiBLw7ZuaWcKPj4+Pj4gPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4+Pj4+IFtTTklQXQo+Pj4+PiBBbnlib2R5IGhhdmUgYW55
IGlkZWFzPwo+Pj4+IEkgdGhpbmsgd2Ugc2hvdWxkIGxvb2sgYXQgdGhlIHVzZSBjYXNlcyB3aHkg
Y29kZSBpcyB0b3VjaGluZwo+Pj4+IChwb3MpCj4+Pj4gYWZ0ZXIgdGhlIGxvb3AuCj4+Pj4KPj4+
PiBKdXN0IGZyb20gc2tpbW1pbmcgb3ZlciB0aGUgcGF0Y2hlcyB0byBjaGFuZ2UgdGhpcyBhbmQg
ZXhwZXJpZW5jZQo+Pj4+IHdpdGggdGhlIGRyaXZlcnMvc3Vic3lzdGVtcyBJIGhlbHAgdG8gbWFp
bnRhaW4gSSB0aGluayB0aGUKPj4+PiBwcmltYXJ5IHBhdHRlcm4gbG9va3Mgc29tZXRoaW5nIGxp
a2UgdGhpczoKPj4+Pgo+Pj4+IGxpc3RfZm9yX2VhY2hfZW50cnkoZW50cnksIGhlYWQsIG1lbWJl
cikgewo+Pj4+ICAgICAgICBpZiAoc29tZV9jb25kaXRpb25fY2hlY2tpbmcoZW50cnkpKQo+Pj4+
ICAgICAgICAgICAgYnJlYWs7Cj4+Pj4gfQo+Pj4+IGRvX3NvbWV0aGluZ193aXRoKGVudHJ5KTsK
Pj4+IEFjdHVhbGx5LCB3ZSB1c3VhbGx5IGhhdmUgYSBjaGVjayB0byBzZWUgaWYgdGhlIGxvb3Ag
Zm91bmQKPj4+IGFueXRoaW5nLCBidXQgaW4gdGhhdCBjYXNlIGl0IHNob3VsZCBzb21ldGhpbmcg
bGlrZQo+Pj4KPj4+IGlmIChsaXN0X2VudHJ5X2lzX2hlYWQoZW50cnksIGhlYWQsIG1lbWJlcikp
IHsKPj4+ICAgICAgIHJldHVybiB3aXRoIGVycm9yOwo+Pj4gfQo+Pj4gZG9fc29tZXRoaW5fd2l0
aChlbnRyeSk7Cj4+Pgo+Pj4gU3VmZmljZT8gIFRoZSBsaXN0X2VudHJ5X2lzX2hlYWQoKSBtYWNy
byBpcyBkZXNpZ25lZCB0byBjb3BlIHdpdGgKPj4+IHRoZSBib2d1cyBlbnRyeSBvbiBoZWFkIHBy
b2JsZW0uCj4+IFRoYXQgd2lsbCB3b3JrIGFuZCBpcyBhbHNvIHdoYXQgcGVvcGxlIGFscmVhZHkg
ZG8uCj4+Cj4+IFRoZSBrZXkgcHJvYmxlbSBpcyB0aGF0IHdlIGxldCBwZW9wbGUgZG8gdGhlIHNh
bWUgdGhpbmcgb3ZlciBhbmQKPj4gb3ZlciBhZ2FpbiB3aXRoIHNsaWdodGx5IGRpZmZlcmVudCBp
bXBsZW1lbnRhdGlvbnMuCj4+Cj4+IE91dCBpbiB0aGUgd2lsZCBJJ3ZlIHNlZW4gYXQgbGVhc3Qg
dXNpbmcgYSBzZXBhcmF0ZSB2YXJpYWJsZSwgdXNpbmcKPj4gYSBib29sIHRvIGluZGljYXRlIHRo
YXQgc29tZXRoaW5nIHdhcyBmb3VuZCBhbmQganVzdCBhc3N1bWluZyB0aGF0Cj4+IHRoZSBsaXN0
IGhhcyBhbiBlbnRyeS4KPj4KPj4gVGhlIGxhc3QgY2FzZSBpcyBib2d1cyBhbmQgYmFzaWNhbGx5
IHdoYXQgY2FuIGJyZWFrIGJhZGx5Lgo+IFllcywgSSB1bmRlcnN0YW5kIHRoYXQuICBJJ20gc2F5
aW5nIHdlIHNob3VsZCByZXBsYWNlIHRoYXQgYm9ndXMgY2hlY2tzCj4gb2YgZW50cnktPnNvbWV0
aGluZyBhZ2FpbnN0IHNvbWVfdmFsdWUgbG9vcCB0ZXJtaW5hdGlvbiBjb25kaXRpb24gd2l0aAo+
IHRoZSBsaXN0X2VudHJ5X2lzX2hlYWQoKSBtYWNyby4gIFRoYXQgc2hvdWxkIGJlIGEgb25lIGxp
bmUgYW5kIGZhaXJseQo+IG1lY2hhbmljYWwgY2hhbmdlIHJhdGhlciB0aGFuIHRoZSBleHBsb3Np
b24gb2YgY29kZSBjaGFuZ2VzIHdlIHNlZW0gdG8KPiBoYXZlIGluIHRoZSBwYXRjaCBzZXJpZXMu
CgpZZXMsIGV4YWN0bHkgdGhhdCdzIG15IHRoaW5raW5nIGFzIHdlbGwuCgpDaHJpc3RpYW4uCgo+
Cj4gSmFtZXMKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
