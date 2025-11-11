Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFD2C4BBAE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 07:49:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A75560B50;
	Tue, 11 Nov 2025 06:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JIjSCCGgSAGn; Tue, 11 Nov 2025 06:49:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8DFF60B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762843753;
	bh=fnn8buj3dz2cAu1lwnMV3wmGOQAis/X/NnrYyJhRgpI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FSojQ5HmQWwmrmD1ZqTM7pfRUui8DXEClUOHHo6wpO0kuZZajhGueI0TLSyzCFqXj
	 apUOSjHxJTEw7arv3M1yL+hzg7Mw3f8oIkfwmAIA4RdG4OhaiXSgl0K6Xl1jr9K1kN
	 lr5DI4wAygT3Fj84lLir/ZtNqlCLfztYjs6ECobYjU6P55BtFamQiOzs87XDY/Jzn3
	 7E1rm56mB0h+R0u122jkGg2gvhXxVA29sVEAlciUQwpeMv6mNg8FwrLhm5UkRNx3sc
	 2yoqp5/sJahmhByETPrHZ2XgTS6E7hpNKsHWGz7PbMysjIcjQILPRiRaJcTSUov5mU
	 nDwO8OrjBMaGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8DFF60B49;
	Tue, 11 Nov 2025 06:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E7C2831C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C56F14091A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VUVYMDBhAZND for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 06:49:11 +0000 (UTC)
X-Greylist: delayed 398 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 11 Nov 2025 06:49:10 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9CB04408EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB04408EF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.135.223.130;
 helo=smtp-out1.suse.de; envelope-from=tiwai@suse.de; receiver=<UNKNOWN> 
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CB04408EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 06:49:10 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 003E121D96;
 Tue, 11 Nov 2025 06:42:26 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id EAC3E14805;
 Tue, 11 Nov 2025 06:42:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id OZMhONDaEmkhSgAAD6G6ig
 (envelope-from <tiwai@suse.de>); Tue, 11 Nov 2025 06:42:24 +0000
Date: Tue, 11 Nov 2025 07:42:24 +0100
Message-ID: <87jyzx2hpr.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Corey Minyard <corey@minyard.net>,	Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>,	"Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,	Thomas Zimmermann
 <tzimmermann@suse.de>,	Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>,	Rob Clark
 <robin.clark@oss.qualcomm.com>,	Matthew Brost <matthew.brost@intel.com>,
 Hans Verkuil <hverkuil@kernel.org>,	Laurent Pinchart
 <laurent.pinchart+renesas@ideasonboard.com>,	Ulf Hansson
 <ulf.hansson@linaro.org>,	Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>,	Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>,	Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,	Karan Tilak Kumar
 <kartilak@cisco.com>,	Casey Schaufler <casey@schaufler-ca.com>,	Steven
 Rostedt <rostedt@goodmis.org>,	Petr Mladek <pmladek@suse.com>,	Max
 Kellermann <max.kellermann@ionos.com>,	Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org,	linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,	linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org,	linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org,	linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org,	intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org,	netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,	linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org,	linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev,	ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org,	linux-sound@vger.kernel.org,	Rasmus
 Villemoes <linux@rasmusvillemoes.dk>,	Sergey Senozhatsky
 <senozhatsky@chromium.org>,	Jonathan Corbet <corbet@lwn.net>,	Sumit Semwal
 <sumit.semwal@linaro.org>,	Gustavo Padovan <gustavo@padovan.org>,	David
 Airlie <airlied@gmail.com>,	Simona Vetter <simona@ffwll.ch>,	Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,	Maxime Ripard
 <mripard@kernel.org>,	Dmitry Baryshkov <lumag@kernel.org>,	Abhinav Kumar
 <abhinav.kumar@linux.dev>,	Jessica Zhang <jesszhan0024@gmail.com>,	Sean
 Paul <sean@poorly.run>,	Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,	Lucas De Marchi
 <lucas.demarchi@intel.com>,	Thomas =?ISO-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>,	Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,	Vladimir Oltean
 <olteanv@gmail.com>,	Andrew Lunn <andrew@lunn.ch>,	"David S. Miller"
 <davem@davemloft.net>,	Eric Dumazet <edumazet@google.com>,	Jakub Kicinski
 <kuba@kernel.org>,	Paolo Abeni <pabeni@redhat.com>,	Tony Nguyen
 <anthony.l.nguyen@intel.com>,	Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,	Krzysztof =?ISO-8859-2?Q?Wilczy=F1ski?=
 <kwilczynski@kernel.org>,	Kishon Vijay Abraham I <kishon@kernel.org>,	Bjorn
 Helgaas <bhelgaas@google.com>,	Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,	Vadim Fedorenko
 <vadim.fedorenko@linux.dev>,	Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,	Jan Hoeppner
 <hoeppner@linux.ibm.com>,	Heiko Carstens <hca@linux.ibm.com>,	Vasily Gorbik
 <gor@linux.ibm.com>,	Alexander Gordeev <agordeev@linux.ibm.com>,	Christian
 Borntraeger <borntraeger@linux.ibm.com>,	Sven Schnelle
 <svens@linux.ibm.com>,	Satish Kharat <satishkh@cisco.com>,	Sesidhar Baddela
 <sebaddel@cisco.com>,	"James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>,	Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,	Xiubo Li <xiubli@redhat.com>,	Ilya Dryomov
 <idryomov@gmail.com>,	Masami Hiramatsu <mhiramat@kernel.org>,	Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>,	Andrew Morton
 <akpm@linux-foundation.org>,	Jaroslav Kysela <perex@perex.cz>,	Takashi Iwai
 <tiwai@suse.com>
In-Reply-To: <20251110184727.666591-3-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
 <20251110184727.666591-3-andriy.shevchenko@linux.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/27.2 Mule/6.0
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Spamd-Result: default: False [-1.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 TO_DN_SOME(0.00)[]; TAGGED_RCPT(0.00)[renesas];
 MIME_TRACE(0.00)[0:+]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[];
 FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,kernel.org,ideasonboard.com,linaro.org,wbinvd.org,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com,linux.dev,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,HansenPartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org,perex.cz];
 R_RATELIMIT(0.00)[to_ip_from(RLmdkd3ei8pyzuqshpsr74qwzu)];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_SOME(0.00)[]; RCPT_COUNT_GT_50(0.00)[96];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,imap1.dmz-prg2.suse.org:helo]
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1762843347; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnn8buj3dz2cAu1lwnMV3wmGOQAis/X/NnrYyJhRgpI=;
 b=MJJifpxj0d+JjXgZOzmxMDpQDTSyIadrJYsNIbJl+ULZfRSkA1F3QRigpspAqsE+66Rhp4
 Shn7meUxG5KGJZOHhOahRAQKGy6Nb5TLhqjOSRo1AsBLy8kaYN8yBZmHfsJ+Bw3No+qv6Y
 5wW5dT7W11nmHzpKpr6zOoTnHE6LBoQ=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1762843347;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnn8buj3dz2cAu1lwnMV3wmGOQAis/X/NnrYyJhRgpI=;
 b=XOVf1gy9U5gZVwTjF3TZLqMUlzKAS6MC5EfTBJRYyS+0eMhaSrKs4ZKyZxOlsKibNkjCP/
 7jvcMdxbfbH3qxAQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_rsa; 
 t=1762843347; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnn8buj3dz2cAu1lwnMV3wmGOQAis/X/NnrYyJhRgpI=;
 b=MJJifpxj0d+JjXgZOzmxMDpQDTSyIadrJYsNIbJl+ULZfRSkA1F3QRigpspAqsE+66Rhp4
 Shn7meUxG5KGJZOHhOahRAQKGy6Nb5TLhqjOSRo1AsBLy8kaYN8yBZmHfsJ+Bw3No+qv6Y
 5wW5dT7W11nmHzpKpr6zOoTnHE6LBoQ=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.de; s=susede2_ed25519; t=1762843347;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnn8buj3dz2cAu1lwnMV3wmGOQAis/X/NnrYyJhRgpI=;
 b=XOVf1gy9U5gZVwTjF3TZLqMUlzKAS6MC5EfTBJRYyS+0eMhaSrKs4ZKyZxOlsKibNkjCP/
 7jvcMdxbfbH3qxAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=suse.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=MJJifpxj; 
 dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=XOVf1gy9; 
 dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de
 header.a=rsa-sha256 header.s=susede2_rsa header.b=MJJifpxj; 
 dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=XOVf1gy9
X-Mailman-Original-Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [Intel-wired-lan] [PATCH v1 02/23] ALSA: seq: Switch to use
 %ptSp
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

On Mon, 10 Nov 2025 19:40:21 +0100,
Andy Shevchenko wrote:
> 
> Use %ptSp instead of open coded variants to print content of
> struct timespec64 in human readable format.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  sound/core/seq/seq_queue.c | 2 +-
>  sound/core/seq/seq_timer.c | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/sound/core/seq/seq_queue.c b/sound/core/seq/seq_queue.c
> index f5c0e401c8ae..f6e86cbf38bc 100644
> --- a/sound/core/seq/seq_queue.c
> +++ b/sound/core/seq/seq_queue.c
> @@ -699,7 +699,7 @@ void snd_seq_info_queues_read(struct snd_info_entry *entry,
>  		snd_iprintf(buffer, "current tempo      : %d\n", tmr->tempo);
>  		snd_iprintf(buffer, "tempo base         : %d ns\n", tmr->tempo_base);
>  		snd_iprintf(buffer, "current BPM        : %d\n", bpm);
> -		snd_iprintf(buffer, "current time       : %d.%09d s\n", tmr->cur_time.tv_sec, tmr->cur_time.tv_nsec);
> +		snd_iprintf(buffer, "current time       : %ptSp s\n", &tmr->cur_time);
>  		snd_iprintf(buffer, "current tick       : %d\n", tmr->tick.cur_tick);
>  		snd_iprintf(buffer, "\n");
>  	}

tmr->cur_time isn't struct timespec64, but it's struct
tmr->snd_seq_real_time.


thanks,

Takashi
