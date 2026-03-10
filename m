Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOhdA9knsGnYgQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:16:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C60A251A45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 15:16:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B88F605BB;
	Tue, 10 Mar 2026 14:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id baNHC4MOO0wU; Tue, 10 Mar 2026 14:16:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5845F60617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773152214;
	bh=u1O5Z146YMk8FHwWYHIeq5l+sJXYGn84l3Uu3PDpBrg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RspadOBpFLVdAmn6KMLRjn+lh0cEV2PdlERrwsfEJfvtB2pb4YpljZ0tryGQLtlSc
	 lxhObKg4GHSja3hgGO/2ok3VGMsXKJ7mT9d+rGiLdkvDHpm+lqkGN5S3wCVTy8L/0u
	 oNycR7wEabDjjLfjQC3bBK6sMcBXuGeXobA/782ajjjuITg2ynXiVgM5+nSnAkBTeZ
	 /eG36sV5ljsg1NeBIUAcLZgcvB5teSEwAUmWvLl4v8CofvFlqI1l9LMcRw9UvV09vz
	 uCQt9qlzHcxy3LX1vYLX2Xj1+SiwfZgyC5HHemd5X9d83LZhygw037y2SZf+6Nry7e
	 gguG2gFjQKnGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5845F60617;
	Tue, 10 Mar 2026 14:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B6106B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C2A540354
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id So4GpiowNeXq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 14:16:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=216.40.44.15;
 helo=relay.hostedemail.com; envelope-from=rostedt@goodmis.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B025C4031B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B025C4031B
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com
 [216.40.44.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B025C4031B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 14:16:51 +0000 (UTC)
Received: from omf16.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay10.hostedemail.com (Postfix) with ESMTP id BF2B9C0E36;
 Tue, 10 Mar 2026 14:16:43 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by
 omf16.hostedemail.com (Postfix) with ESMTPA id D3F9D2000E; 
 Tue, 10 Mar 2026 14:14:32 +0000 (UTC)
Date: Tue, 10 Mar 2026 10:14:42 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, Julia Lawall
 <Julia.Lawall@inria.fr>, Nicolas Palix <nicolas.palix@imag.fr>, Chris Mason
 <clm@fb.com>, David Sterba <dsterba@suse.com>, Ilya Dryomov
 <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Viacheslav
 Dubeyko <slava@dubeyko.com>, Theodore Ts'o <tytso@mit.edu>, Andreas Dilger
 <adilger.kernel@dilger.ca>, Steve French <sfrench@samba.org>, Paulo
 Alcantara <pc@manguebit.org>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Bharath SM <bharathsm@microsoft.com>, Eric Van Hensbergen
 <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique
 Martinet <asmadeus@codewreck.org>, Christian Schoenebeck
 <linux_oss@crudebyte.com>, Gao Xiang <xiang@kernel.org>, Chao Yu
 <chao@kernel.org>, Yue Hu <zbestahu@gmail.com>, Jeffle Xu
 <jefflexu@linux.alibaba.com>, Sandeep Dhavale <dhavale@google.com>, Hongbo
 Li <lihongbo22@huawei.com>, Chunhai Guo <guochunhai@vivo.com>, Miklos
 Szeredi <miklos@szeredi.hu>, Konstantin Komarov
 <almaz.alexandrovich@paragon-software.com>, Andreas Gruenbacher
 <agruenba@redhat.com>, Kees Cook <kees@kernel.org>, Tony Luck
 <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Jan
 Kara <jack@suse.com>, Phillip Lougher <phillip@squashfs.org.uk>, Alexander
 Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan
 Kara <jack@suse.cz>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Tejun Heo <tj@kernel.org>,
 David Vernet <void@manifault.com>, Andrea Righi <arighi@nvidia.com>,
 Changwoo Min <changwoo@igalia.com>, Ingo Molnar <mingo@redhat.com>, Peter
 Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann
 <dietmar.eggemann@arm.com>, Ben Segall <bsegall@google.com>, Mel Gorman
 <mgorman@suse.de>, Valentin Schneider <vschneid@redhat.com>, Luis
 Chamberlain <mcgrof@kernel.org>, Petr Pavlu <petr.pavlu@suse.com>, Daniel
 Gomez <da.gomez@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Aaron
 Tomlin <atomlin@atomlin.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Max
 Filippov <jcmvbkbc@gmail.com>, Paolo Bonzini <pbonzini@redhat.com>, John
 Johansen <john.johansen@canonical.com>, Paul Moore <paul@paul-moore.com>,
 James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>,
 Andrew Morton <akpm@linux-foundation.org>, Alasdair Kergon
 <agk@redhat.com>, Mike Snitzer <snitzer@kernel.org>, Mikulas Patocka
 <mpatocka@redhat.com>, Benjamin Marzinski <bmarzins@redhat.com>, "David S.
 Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Marcel Holtmann
 <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, Luiz
 Augusto von Dentz <luiz.dentz@gmail.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jiri Pirko <jiri@resnulli.us>, Marcelo Ricardo Leitner
 <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Trond
 Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck
 Lever <chuck.lever@oracle.com>, Jeff Layton <jlayton@kernel.org>, NeilBrown
 <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo
 <Dai.Ngo@oracle.com>, Jon Maloy <jmaloy@redhat.com>, Johannes Berg
 <johannes@sipsolutions.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, John Crispin <john@phrozen.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Yoshinori Sato
 <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>, John Paul
 Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi
 Wang <zhi.wang.linux@gmail.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Alex
 Deucher <alexander.deucher@amd.com>, Christian =?UTF-8?B?S8O2bmln?=
 <christian.koenig@amd.com>, Sandy Huang <hjc@rock-chips.com>, Heiko
 =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Igor Russkikh <irusskikh@marvell.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Michael Chan <mchan@broadcom.com>, Potnuri Bharat Teja
 <bharat@chelsio.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Taras Chornyi
 <taras.chornyi@plvision.eu>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Iyappan Subramanian
 <iyappan@os.amperecomputing.com>, Keyur Chudgar
 <keyur@os.amperecomputing.com>, Quan Nguyen <quan@os.amperecomputing.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Gregory
 Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Vinod Koul <vkoul@kernel.org>, Linus
 Walleij <linusw@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Heiko
 Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander
 Gordeev <agordeev@linux.ibm.com>, Christian Borntraeger
 <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, "Martin
 K. Petersen" <martin.petersen@oracle.com>, Eduardo Valentin
 <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui
 <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Alex Williamson
 <alex@shazbot.org>, Mark Greer <mgreer@animalcreek.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Shuah Khan <skhan@linuxfoundation.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon
 <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Lee Jones
 <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Dave Penkler
 <dpenkler@gmail.com>, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Long Li <longli@microsoft.com>, Justin Sanders
 <justin@coraid.com>, Jens Axboe <axboe@kernel.dk>, Georgi Djakov
 <djakov@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Borislav
 Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Pali =?UTF-8?B?Um9ow6Fy?=
 <pali@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20260310101220.24a5c5e9@gandalf.local.home>
In-Reply-To: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: t3hdewhrhasw7f3gorx5jroa8bfttu61
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/9Mzn/qfZFEp1e7RgFq11s4n8TXcGF42g=
X-HE-Tag: 1773152072-399195
X-HE-Meta: U2FsdGVkX1/sr455L+OeqDWIUsSflk6pOnirfnKU4P+1ptXPBptvvQtdgLpKUro5xpE5mwL9OSxc8De42fWUKW3UA0xDjLt8deOx7Rt+YD2zdLsgLNPt+GtW9t0OIk6HGza/DLYz3Vzwa6W2j9RFRkt0u8kU/4nSdzQFXg0XUCPq0O7Zih2HPR5kbJC2dqX8fgpgG6kXbyGWAJWC5H8NEAgNiaeFS1ibRza8HlDqKtmihYdG70k1ID4dNk90G/xB/tCbIhXs0SuHsvdkjj/J9rzzD7qFP/bRWTfcgm+WhH9Nv5Rz067I1rPqmO4dO7ez
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=goodmis.org
Subject: Re: [Intel-wired-lan] [PATCH 00/61] treewide: Use IS_ERR_OR_NULL
 over manual NULL check - refactor
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5C60A251A45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[goodmis.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:Julia.Lawall@inria.fr,m:nicolas.palix@imag.fr,m:clm@fb.com,m:dsterba@suse.com,m:idryomov@gmail.com,m:amarkuze@redhat.com,m:slava@dubeyko.com,m:tytso@mit.edu,m:adilger.kernel@dilger.ca,m:sfrench@samba.org,m:pc@manguebit.org,m:ronniesahlberg@gmail.com,m:sprasad@microsoft.com,m:tom@talpey.com,m:bharathsm@microsoft.com,m:ericvh@kernel.org,m:lucho@ionkov.net,m:asmadeus@codewreck.org,m:linux_oss@crude
 byte.com,m:xiang@kernel.org,m:chao@kernel.org,m:zbestahu@gmail.com,m:jefflexu@linux.alibaba.com,m:dhavale@google.com,m:lihongbo22@huawei.com,m:guochunhai@vivo.com,m:miklos@szeredi.hu,m:almaz.alexandrovich@paragon-software.com,m:agruenba@redhat.com,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:jack@suse.com,m:phillip@squashfs.org.uk,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:mhiramat@kernel.org,m:mathieu.desnoyers@efficios.com,m:tj@kernel.org,m:void@manifault.com,m:arighi@nvidia.com,m:changwoo@igalia.com,m:mingo@redhat.com,m:peterz@infradead.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gandalf.local.home:mid,avm.de:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim];
	FORGED_SENDER(0.00)[rostedt@goodmis.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.ubuntu.com,vger.kernel.org,inria.fr,lists.linux.dev,lists.osuosl.org,lists.infradead.org,lists.ozlabs.org,kvack.org,st-md-mailman.stormreply.com,lists.samba.org,lists.sourceforge.net,imag.fr,fb.com,suse.com,gmail.com,redhat.com,dubeyko.com,mit.edu,dilger.ca,samba.org,manguebit.org,microsoft.com,talpey.com,kernel.org,ionkov.net,codewreck.org,crudebyte.com,linux.alibaba.com,google.com,huawei.com,vivo.com,szeredi.hu,paragon-software.com,intel.com,igalia.com,squashfs.org.uk,zeniv.linux.org.uk,suse.cz,efficios.com,manifault.com,nvidia.com,infradead.org,linaro.org,arm.com,suse.de,atomlin.com,samsung.com,perex.cz,canonical.com,paul-moore.com,namei.org,hallyn.com,linux-foundation.org,davemloft.net,holtmann.org,iogearbox.net,fomichev.me,mojatatu.com,resnulli.us,oracle.com,brown.name,sipsolutions.net,armlinux.org.uk,phrozen.org,alpha.franken.de,users.sourceforge.jp,libc.org,physik.fu-berlin.de,ideasonboard.com,kwiboo.se,linux.intel.com,ffwll.ch,ur
 sulin.net,amd.com,rock-chips.com,sntech.de,marvell.com,lunn.ch,broadcom.com,chelsio.com,plvision.eu,foss.st.com,os.amperecomputing.com,bootlin.com,linux.ibm.com,ti.com,shazbot.org,animalcreek.com,nod.at,linuxfoundation.org,8bytes.org,coraid.com,kernel.dk,baylibre.com,pengutronix.de,alien8.de,zytor.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_GT_50(0.00)[247];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026 12:48:26 +0100
Philipp Hahn <phahn-oss@avm.de> wrote:

> While doing some static code analysis I stumbled over a common pattern,
> where IS_ERR() is combined with a NULL check. For that there is
> IS_ERR_OR_NULL().
> 
> I've written a Coccinelle patch to find and patch those instances.
> The patches follow grouped by subsystem.


Honestly, the IS_ERR_OR_NULL() looks worse in a lot of the locations you
updated. Just because we have IS_ERR_OR_NULL() doesn't mean we need to go
and replace every location that can use it.

NAK for any code this touches that I'm responsible for.

-- Steve
